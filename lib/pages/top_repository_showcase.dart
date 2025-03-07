import 'package:flutter/material.dart';
import 'package:gitsense/components/bloc/user_notifier.dart';
import 'package:gitsense/graphql/queries/top_repositories.graphql.dart';
import 'package:gitsense/util/logging.dart';

class TopRepositoryPage extends StatelessWidget {
  const TopRepositoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Query$TopRepositories$Widget(
        options: Options$Query$TopRepositories(
          variables: Variables$Query$TopRepositories(
            authorId: context.userInfo.user!.id,
            nRepositories: 3,
          ),
        ),
        builder: (result, {fetchMore, refetch}) {
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

            return Center(child: Text('Oopsies, we did a problemo'));
          }

          // Pull out the list of repositories, using an empty list if we found none
          final List<Query$TopRepositories$viewer$topRepositories$nodes?>
          nodes = result.parsedData!.viewer.topRepositories.nodes ?? [];

          // Filter out any null values or bad translations
          final List<Query$TopRepositories$viewer$topRepositories$nodes> data =
              nodes
                  .where((element) => element != null)
                  .map((element) => element!)
                  .toList();

          // Create the list of the cute little repo cards
          return ListView.builder(
            itemBuilder: (context, index) {
              final Query$TopRepositories$viewer$topRepositories$nodes repo =
                  data[index];
              return RepositoryShowcase(data: repo);
            },
            itemCount: data.length,
          );
        },
      ),
    );
  }
}

class _PageHeader extends StatelessWidget {
  const _PageHeader();

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('Top Repositories'));
  }
}

class RepositoryShowcase extends StatelessWidget {
  const RepositoryShowcase({required this.data, super.key});

  final Query$TopRepositories$viewer$topRepositories$nodes data;

  @override
  Widget build(BuildContext context) {
    // Build out when we have the data we actually want
    var result = data.defaultBranchRef?.target?.maybeWhen<Widget?>(
      commit: (commit) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 16),
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
                    children: [
                      TextSpan(
                        text: commit.authorCount.totalCount.toString(),
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' / ',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: commit.totalCount.totalCount.toString(),

                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      orElse: () => null,
    );

    return result ??
        // Handle the case if SOMEHOW someone has their maximum ammount of
        // commits on a repository without a branch.
        Card(
          child: Column(
            children: <Widget>[
              ListTile(title: Text(data.name)),
              Text('Unknown commit data'),
            ],
          ),
        );
  }
}
