import 'package:flutter/material.dart';
import 'package:gitsense/components/github_requests/user_query.dart';
import 'package:gitsense/graphql/queries/top_repositories.graphql.dart';
import 'package:gitsense/util/logging.dart';

class TopRepositoryPage extends StatelessWidget {
  const TopRepositoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

class RepositoryShowcase extends StatelessWidget {
  const RepositoryShowcase({required this.data, super.key});

  final Query$TopRepositories$viewer$topRepositories$nodes data;

  @override
  Widget build(BuildContext context) {
    // Breakpoint here
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(title: Text(data.name)),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'AuthorCount',
                  // data
                  //     .defaultBranchRef
                  //     .target
                  //     .data
                  //     .defaultBranch
                  //     .authorCount
                  //     .toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' / '),
                TextSpan(
                  text: 'TBD',
                  // text: data.defaultBranch.totalCount.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
