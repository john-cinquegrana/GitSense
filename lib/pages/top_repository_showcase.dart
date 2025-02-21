import 'package:flutter/material.dart';
import 'package:gitsense/components/github_requests/repositories_query.dart';
import 'package:gitsense/components/github_requests/user_query.dart';
import 'package:gitsense/util/api_translation.dart';
import 'package:gitsense/util/logging.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class TopRepositoryPage extends StatelessWidget {
  const TopRepositoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _TopRepositoryData(
        builder: (context, data) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final repo = data[index];
              return RepositoryShowcase(data: repo);
            },
            itemCount: data.length,
          );
        },
      ),
    );
  }
}

class _TopRepositoryData extends StatelessWidget {
  const _TopRepositoryData({required this.builder});

  final Widget Function(BuildContext, List<Repository>) builder;

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: gql(topRepositoriesQuery),
        variables: {"nRepositories": 3, "authorId": context.userInfo.user!.id},
      ),
      builder: (result, {fetchMore, refetch}) {
        // Handle erroneous data
        if (result.isNotLoading && result.hasException && result.data == null) {
          // Log out the exception as an error
          logger.e(
            result.exception.toString(),
            stackTrace: result.exception?.originalStackTrace,
          );
          return Center(child: Text(result.exception.toString()));
        }
        // If the data is still loading, do nothing
        if (result.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        // IF the data is here, parse it out
        bool dataExists = result.isNotLoading && result.data != null;
        List<Repository> repositories = [];
        if (!dataExists) {
          return const Center(child: Text('No data found'));
        } else {
          // Pull the list of repositories out of the json
          final List<dynamic> data =
              result.data!['viewer']['topRepositories']['nodes'];

          // Change the json into a list of repositories
          repositories =
              data
                  .map<Repository>(
                    (element) => Repository.fromJson(element as Json),
                  )
                  .toList();
        }

        // It should be okay to use the same context since we don't add anything to it
        return builder(context, repositories);
      },
    );
  }
}

class RepositoryShowcase extends StatelessWidget {
  const RepositoryShowcase({required this.data, super.key});

  final Repository data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(title: Text(data.name)),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: data.defaultBranch.authorCount.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' / '),
                TextSpan(
                  text: data.defaultBranch.totalCount.toString(),
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

class EasyTopData extends StatelessWidget {
  const EasyTopData({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
