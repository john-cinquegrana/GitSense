import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLClient connectToGithub() {
  // Grab the token from the environment file
  final String? token = dotenv.env['GITHUB_TOKEN'];

  // Create the GraphQL client link that we will connect to
  final HttpLink httpLink = HttpLink(
    'https://api.github.com/graphql',
    // The authorization token, try not to share this
    defaultHeaders: {'Authorization': 'Bearer $token'},
  );

  return GraphQLClient(link: httpLink, cache: GraphQLCache(store: HiveStore()));
}
