import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gitsense/components/bloc/user_notifier.dart';
import 'package:gitsense/graphql/queries/top_repositories.graphql.dart';
import 'package:gitsense/util/github_graphql.dart';
import 'package:gitsense/util/logging.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// A stateless widget that represents the top repository page in the
/// application.
///
/// This page showcases the top repositories.
class TopRepositoryPage extends StatelessWidget {
  /// Creates a [TopRepositoryPage] widget.
  ///
  /// The [key] parameter is optional and can be used to uniquely identify the
  /// widget.
  const TopRepositoryPage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: AppBar(),
    body: Query$TopRepositories$Widget(
      options: Options$Query$TopRepositories(
        variables: Variables$Query$TopRepositories(
          authorId: context.userInfo.user!.id,
          nRepositories: 10,
        ),
      ),
      builder: (
        final QueryResult<Query$TopRepositories> result, {
        final FetchFunction<Query$TopRepositories> fetchMore,
        final RefetchFunction<Query$TopRepositories> refetch,
      }) {
        // If the data is loading, we give a loading screen
        if (result.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        // If the data is erroneous, we give an error message
        if (result.isNotLoading && result.data == null) {
          if (result.hasException) {
            logger.e(
              result.exception.toString(),
              stackTrace: result.exception?.originalStackTrace,
            );
          }

          return const Center(child: Text('Oopsies, we did a problemo'));
        }

        // Pull out the list of repositories, using an empty list if we found
        // none
        final List<Query$TopRepositories$viewer$topRepositories$nodes?> nodes =
            result.parsedData!.viewer.topRepositories.nodes ??
            <Query$TopRepositories$viewer$topRepositories$nodes?>[];

        // Filter out any null values or bad translations
        final List<Query$TopRepositories$viewer$topRepositories$nodes> data =
            nodes
                .where(
                  (
                    final Query$TopRepositories$viewer$topRepositories$nodes?
                    element,
                  ) => element != null,
                )
                .map(
                  (
                    final Query$TopRepositories$viewer$topRepositories$nodes?
                    element,
                  ) => element!,
                )
                .toList();

        // Create the list of the cute little repo cards
        final ColorScheme colorScheme = ColorScheme.of(context);
        return Theme(
          data: Theme.of(context).copyWith(
            cardTheme: CardTheme(color: colorScheme.primaryContainer),
            textTheme: TextTheme.of(context).apply(
              bodyColor: colorScheme.onPrimaryContainer,
              displayColor: colorScheme.onPrimaryContainer,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ListView.builder(
              itemBuilder: (final BuildContext context, final int index) {
                if (index == 0) {
                  return const _PageHeader();
                } else {
                  final Query$TopRepositories$viewer$topRepositories$nodes
                  repo = data[index - 1];
                  return RepositoryShowcase(data: repo);
                }
              },
              itemCount: data.length + 1,
            ),
          ),
        );
      },
    ),
  );
}

class _PageHeader extends StatelessWidget {
  const _PageHeader();

  @override
  Widget build(final BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: <Widget>[
        Text(
          'Top Repositories',
          style: TextTheme.of(
            context,
          ).displayMedium?.copyWith(color: ColorScheme.of(context).onSurface),
          textAlign: TextAlign.left,
        ),

        Row(
          spacing: 16,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SvgPicture.asset(
                'assets/repository.svg',
                fit: BoxFit.cover,
                width: 100,
                colorFilter: ColorFilter.mode(
                  ColorScheme.of(context).primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Flexible(
              child: Text(
                'Shows off the repositories you have comitted to the most this '
                'year and compares them to the total amount of commits.',
                style: TextTheme.of(
                  context,
                ).bodyLarge?.copyWith(color: ColorScheme.of(context).onSurface),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

/// A stateless widget that showcases a repository.
///
/// This widget displays the most popular branch and commit data for a
/// repository.
class RepositoryShowcase extends StatelessWidget {
  /// Creates a [RepositoryShowcase] widget.
  ///
  /// The [data] parameter must not be null.
  const RepositoryShowcase({required this.data, super.key});

  /// The data representing the repository to be showcased.
  final Query$TopRepositories$viewer$topRepositories$nodes data;

  @override
  Widget build(final BuildContext context) {
    // Build out when we have the data we actually want
    final Widget? result = data.defaultBranchRef?.target?.maybeWhen<Widget?>(
      commit:
          (
            // ignore: lines_longer_than_80_chars GraphQL generated way too long of a class name
            final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
            commit,
          ) => Card(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: commit.authorCount.totalCount.toString(),
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' / ',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: commit.totalCount.totalCount.toString(),

                          style:
                              Theme.of(
                                context,
                              ).textTheme.titleMedium?.copyWith(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      orElse: () => null,
    );

    return result ??
        // Handle the case if SOMEHOW someone has their maximum ammount of
        // commits on a repository without a branch.
        Card(
          child: Column(
            children: <Widget>[
              ListTile(title: Text(data.name)),
              const Text('Unknown commit data'),
            ],
          ),
        );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<Query$TopRepositories$viewer$topRepositories$nodes>(
        'data',
        data,
      ),
    );
  }
}
