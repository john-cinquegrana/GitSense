import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLClient connectToGithub() {
  // The graphql package useds Hive, so we need to initialize it

  // Create the GraphQL client link that we will connect to
  final HttpLink httpLink = HttpLink(
    'https://api.github.com/graphql',
    // The authorization token, try not to share this
    defaultHeaders: {
      'Authorization': 'Bearer PERSONAL_TOKEN_HERE',
    },
  );

  return GraphQLClient(link: httpLink, cache: GraphQLCache(store: HiveStore()));
}
