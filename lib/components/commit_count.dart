import 'package:flutter/material.dart';

const String readRepositories = '''
query Viewer {
    viewer {
        topRepositories(first: 5, orderBy: { field: NAME, direction: ASC }) {
            pageInfo {
                endCursor
                hasNextPage
            }
            nodes {
                name
                url
                description
                homepageUrl
                id
                defaultBranchRef {
                    name
                    target {
                        ... on Commit {
                            authorCount: history(author: { id: "MDQ6VXNlcjQzNTg3NzQx" }) {
                                totalCount
                            }
                            totalCount: history {
                                totalCount
                            }
                        }
                    }
                }
            }
            
        }
    }
}
''';

class CommitCount extends StatelessWidget {
  const CommitCount({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Placeholder();
    // return Query(options: options, builder: builder);
  }
}
