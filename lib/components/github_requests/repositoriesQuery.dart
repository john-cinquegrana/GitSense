class Repository {
  final String name;
  final String url;
  final String? description;
  final String? homepageUrl;
  final Branch defaultBranch;

  Repository({
    required this.name,
    required this.url,
    required this.description,
    required this.homepageUrl,
    required this.defaultBranch,
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    final defaultBranchRef = json['defaultBranchRef'];

    return Repository(
      name: json['name'],
      url: json['url'],
      description: json['description'],
      homepageUrl: json['homepageUrl'],
      defaultBranch: Branch.fromJson(defaultBranchRef),
    );
  }
}

class Branch {
  final String name;
  final int authorCount;
  final int totalCount;

  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(
      name: json['name'],
      authorCount: json['target']['authorCount']['totalCount'],
      totalCount: json['target']['totalCount']['totalCount'],
    );
  }

  Branch({
    required this.name,
    required this.authorCount,
    required this.totalCount,
  });
}

const topRepositoriesQuery = r"""
query Viewer ($authorId: ID!, $nRepositories: Int!) {
    viewer {
        topRepositories(first: $nRepositories, orderBy: { field: NAME, direction: ASC }) {
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
                            authorCount: history(author: { id: $authorId }) {
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
""";
