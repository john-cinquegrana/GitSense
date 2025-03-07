import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// Creates a connection to the Github GraphQL API so that we may connect and
/// query
GraphQLClient connectToGithub() {
  // Grab the token from the environment file
  final String? token = dotenv.env['GITHUB_TOKEN'];

  // Create the GraphQL client link that we will connect to
  final HttpLink httpLink = HttpLink(
    'https://api.github.com/graphql',
    // The authorization token, try not to share this
    defaultHeaders: <String, String>{'Authorization': 'Bearer $token'},
  );

  return GraphQLClient(link: httpLink, cache: GraphQLCache(store: HiveStore()));
}

/// The flutter_graphQL typing for the fetchMore function it uses in its widgets
typedef FetchFunction<T> = Future<QueryResult<T>> Function(FetchMoreOptions)?;

/// The flutter_graphQL typing for the refetch function it uses in its widgets
typedef RefetchFunction<T> = Future<QueryResult<T>?> Function()?;
