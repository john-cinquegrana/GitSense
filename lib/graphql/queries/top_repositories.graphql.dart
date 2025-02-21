// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$TopRepositories {
  factory Variables$Query$TopRepositories({
    required String authorId,
    required int nRepositories,
  }) =>
      Variables$Query$TopRepositories._({
        r'authorId': authorId,
        r'nRepositories': nRepositories,
      });

  Variables$Query$TopRepositories._(this._$data);

  factory Variables$Query$TopRepositories.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$authorId = data['authorId'];
    result$data['authorId'] = (l$authorId as String);
    final l$nRepositories = data['nRepositories'];
    result$data['nRepositories'] = (l$nRepositories as int);
    return Variables$Query$TopRepositories._(result$data);
  }

  Map<String, dynamic> _$data;

  String get authorId => (_$data['authorId'] as String);

  int get nRepositories => (_$data['nRepositories'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$authorId = authorId;
    result$data['authorId'] = l$authorId;
    final l$nRepositories = nRepositories;
    result$data['nRepositories'] = l$nRepositories;
    return result$data;
  }

  CopyWith$Variables$Query$TopRepositories<Variables$Query$TopRepositories>
      get copyWith => CopyWith$Variables$Query$TopRepositories(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TopRepositories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authorId = authorId;
    final lOther$authorId = other.authorId;
    if (l$authorId != lOther$authorId) {
      return false;
    }
    final l$nRepositories = nRepositories;
    final lOther$nRepositories = other.nRepositories;
    if (l$nRepositories != lOther$nRepositories) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$authorId = authorId;
    final l$nRepositories = nRepositories;
    return Object.hashAll([
      l$authorId,
      l$nRepositories,
    ]);
  }
}

abstract class CopyWith$Variables$Query$TopRepositories<TRes> {
  factory CopyWith$Variables$Query$TopRepositories(
    Variables$Query$TopRepositories instance,
    TRes Function(Variables$Query$TopRepositories) then,
  ) = _CopyWithImpl$Variables$Query$TopRepositories;

  factory CopyWith$Variables$Query$TopRepositories.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TopRepositories;

  TRes call({
    String? authorId,
    int? nRepositories,
  });
}

class _CopyWithImpl$Variables$Query$TopRepositories<TRes>
    implements CopyWith$Variables$Query$TopRepositories<TRes> {
  _CopyWithImpl$Variables$Query$TopRepositories(
    this._instance,
    this._then,
  );

  final Variables$Query$TopRepositories _instance;

  final TRes Function(Variables$Query$TopRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authorId = _undefined,
    Object? nRepositories = _undefined,
  }) =>
      _then(Variables$Query$TopRepositories._({
        ..._instance._$data,
        if (authorId != _undefined && authorId != null)
          'authorId': (authorId as String),
        if (nRepositories != _undefined && nRepositories != null)
          'nRepositories': (nRepositories as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$TopRepositories<TRes>
    implements CopyWith$Variables$Query$TopRepositories<TRes> {
  _CopyWithStubImpl$Variables$Query$TopRepositories(this._res);

  TRes _res;

  call({
    String? authorId,
    int? nRepositories,
  }) =>
      _res;
}

class Query$TopRepositories {
  Query$TopRepositories({
    required this.viewer,
    this.$__typename = 'Query',
  });

  factory Query$TopRepositories.fromJson(Map<String, dynamic> json) {
    final l$viewer = json['viewer'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories(
      viewer: Query$TopRepositories$viewer.fromJson(
          (l$viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TopRepositories$viewer viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$viewer = viewer;
    _resultData['viewer'] = l$viewer.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TopRepositories || runtimeType != other.runtimeType) {
      return false;
    }
    final l$viewer = viewer;
    final lOther$viewer = other.viewer;
    if (l$viewer != lOther$viewer) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories on Query$TopRepositories {
  CopyWith$Query$TopRepositories<Query$TopRepositories> get copyWith =>
      CopyWith$Query$TopRepositories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TopRepositories<TRes> {
  factory CopyWith$Query$TopRepositories(
    Query$TopRepositories instance,
    TRes Function(Query$TopRepositories) then,
  ) = _CopyWithImpl$Query$TopRepositories;

  factory CopyWith$Query$TopRepositories.stub(TRes res) =
      _CopyWithStubImpl$Query$TopRepositories;

  TRes call({
    Query$TopRepositories$viewer? viewer,
    String? $__typename,
  });
  CopyWith$Query$TopRepositories$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$TopRepositories<TRes>
    implements CopyWith$Query$TopRepositories<TRes> {
  _CopyWithImpl$Query$TopRepositories(
    this._instance,
    this._then,
  );

  final Query$TopRepositories _instance;

  final TRes Function(Query$TopRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopRepositories(
        viewer: viewer == _undefined || viewer == null
            ? _instance.viewer
            : (viewer as Query$TopRepositories$viewer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TopRepositories$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return CopyWith$Query$TopRepositories$viewer(
        local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$TopRepositories<TRes>
    implements CopyWith$Query$TopRepositories<TRes> {
  _CopyWithStubImpl$Query$TopRepositories(this._res);

  TRes _res;

  call({
    Query$TopRepositories$viewer? viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TopRepositories$viewer<TRes> get viewer =>
      CopyWith$Query$TopRepositories$viewer.stub(_res);
}

const documentNodeQueryTopRepositories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TopRepositories'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'authorId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nRepositories')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'topRepositories'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'nRepositories')),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'field'),
                    value: EnumValueNode(name: NameNode(value: 'NAME')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'direction'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  ),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'endCursor'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'hasNextPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'homepageUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'defaultBranchRef'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'target'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          InlineFragmentNode(
                            typeCondition: TypeConditionNode(
                                on: NamedTypeNode(
                              name: NameNode(value: 'Commit'),
                              isNonNull: false,
                            )),
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'history'),
                                alias: NameNode(value: 'authorCount'),
                                arguments: [
                                  ArgumentNode(
                                    name: NameNode(value: 'author'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                        name: NameNode(value: 'id'),
                                        value: VariableNode(
                                            name: NameNode(value: 'authorId')),
                                      )
                                    ]),
                                  )
                                ],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                    name: NameNode(value: 'totalCount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ]),
                              ),
                              FieldNode(
                                name: NameNode(value: 'history'),
                                alias: NameNode(value: 'totalCount'),
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                    name: NameNode(value: 'totalCount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ]),
                              ),
                              FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ]),
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$TopRepositories _parserFn$Query$TopRepositories(
        Map<String, dynamic> data) =>
    Query$TopRepositories.fromJson(data);
typedef OnQueryComplete$Query$TopRepositories = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$TopRepositories?,
);

class Options$Query$TopRepositories
    extends graphql.QueryOptions<Query$TopRepositories> {
  Options$Query$TopRepositories({
    String? operationName,
    required Variables$Query$TopRepositories variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TopRepositories? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TopRepositories? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$TopRepositories(data),
                  ),
          onError: onError,
          document: documentNodeQueryTopRepositories,
          parserFn: _parserFn$Query$TopRepositories,
        );

  final OnQueryComplete$Query$TopRepositories? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$TopRepositories
    extends graphql.WatchQueryOptions<Query$TopRepositories> {
  WatchOptions$Query$TopRepositories({
    String? operationName,
    required Variables$Query$TopRepositories variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TopRepositories? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryTopRepositories,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TopRepositories,
        );
}

class FetchMoreOptions$Query$TopRepositories extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TopRepositories({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TopRepositories variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryTopRepositories,
        );
}

extension ClientExtension$Query$TopRepositories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TopRepositories>> query$TopRepositories(
          Options$Query$TopRepositories options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$TopRepositories> watchQuery$TopRepositories(
          WatchOptions$Query$TopRepositories options) =>
      this.watchQuery(options);
  void writeQuery$TopRepositories({
    required Query$TopRepositories data,
    required Variables$Query$TopRepositories variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryTopRepositories),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TopRepositories? readQuery$TopRepositories({
    required Variables$Query$TopRepositories variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryTopRepositories),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TopRepositories.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TopRepositories> useQuery$TopRepositories(
        Options$Query$TopRepositories options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TopRepositories> useWatchQuery$TopRepositories(
        WatchOptions$Query$TopRepositories options) =>
    graphql_flutter.useWatchQuery(options);

class Query$TopRepositories$Widget
    extends graphql_flutter.Query<Query$TopRepositories> {
  Query$TopRepositories$Widget({
    widgets.Key? key,
    required Options$Query$TopRepositories options,
    required graphql_flutter.QueryBuilder<Query$TopRepositories> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$TopRepositories$viewer {
  Query$TopRepositories$viewer({
    required this.topRepositories,
    this.$__typename = 'User',
  });

  factory Query$TopRepositories$viewer.fromJson(Map<String, dynamic> json) {
    final l$topRepositories = json['topRepositories'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer(
      topRepositories: Query$TopRepositories$viewer$topRepositories.fromJson(
          (l$topRepositories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TopRepositories$viewer$topRepositories topRepositories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topRepositories = topRepositories;
    _resultData['topRepositories'] = l$topRepositories.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topRepositories = topRepositories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topRepositories,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TopRepositories$viewer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topRepositories = topRepositories;
    final lOther$topRepositories = other.topRepositories;
    if (l$topRepositories != lOther$topRepositories) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer
    on Query$TopRepositories$viewer {
  CopyWith$Query$TopRepositories$viewer<Query$TopRepositories$viewer>
      get copyWith => CopyWith$Query$TopRepositories$viewer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer<TRes> {
  factory CopyWith$Query$TopRepositories$viewer(
    Query$TopRepositories$viewer instance,
    TRes Function(Query$TopRepositories$viewer) then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer;

  factory CopyWith$Query$TopRepositories$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer;

  TRes call({
    Query$TopRepositories$viewer$topRepositories? topRepositories,
    String? $__typename,
  });
  CopyWith$Query$TopRepositories$viewer$topRepositories<TRes>
      get topRepositories;
}

class _CopyWithImpl$Query$TopRepositories$viewer<TRes>
    implements CopyWith$Query$TopRepositories$viewer<TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer _instance;

  final TRes Function(Query$TopRepositories$viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topRepositories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopRepositories$viewer(
        topRepositories: topRepositories == _undefined ||
                topRepositories == null
            ? _instance.topRepositories
            : (topRepositories as Query$TopRepositories$viewer$topRepositories),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TopRepositories$viewer$topRepositories<TRes>
      get topRepositories {
    final local$topRepositories = _instance.topRepositories;
    return CopyWith$Query$TopRepositories$viewer$topRepositories(
        local$topRepositories, (e) => call(topRepositories: e));
  }
}

class _CopyWithStubImpl$Query$TopRepositories$viewer<TRes>
    implements CopyWith$Query$TopRepositories$viewer<TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer(this._res);

  TRes _res;

  call({
    Query$TopRepositories$viewer$topRepositories? topRepositories,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TopRepositories$viewer$topRepositories<TRes>
      get topRepositories =>
          CopyWith$Query$TopRepositories$viewer$topRepositories.stub(_res);
}

class Query$TopRepositories$viewer$topRepositories {
  Query$TopRepositories$viewer$topRepositories({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'RepositoryConnection',
  });

  factory Query$TopRepositories$viewer$topRepositories.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories(
      pageInfo: Query$TopRepositories$viewer$topRepositories$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$TopRepositories$viewer$topRepositories$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TopRepositories$viewer$topRepositories$pageInfo pageInfo;

  final List<Query$TopRepositories$viewer$topRepositories$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TopRepositories$viewer$topRepositories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories
    on Query$TopRepositories$viewer$topRepositories {
  CopyWith$Query$TopRepositories$viewer$topRepositories<
          Query$TopRepositories$viewer$topRepositories>
      get copyWith => CopyWith$Query$TopRepositories$viewer$topRepositories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories<TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories(
    Query$TopRepositories$viewer$topRepositories instance,
    TRes Function(Query$TopRepositories$viewer$topRepositories) then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories.stub(TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories;

  TRes call({
    Query$TopRepositories$viewer$topRepositories$pageInfo? pageInfo,
    List<Query$TopRepositories$viewer$topRepositories$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Query$TopRepositories$viewer$topRepositories$nodes?>? Function(
              Iterable<
                  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes<
                      Query$TopRepositories$viewer$topRepositories$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories<TRes>
    implements CopyWith$Query$TopRepositories$viewer$topRepositories<TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories _instance;

  final TRes Function(Query$TopRepositories$viewer$topRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopRepositories$viewer$topRepositories(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$TopRepositories$viewer$topRepositories$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes
                as List<Query$TopRepositories$viewer$topRepositories$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$TopRepositories$viewer$topRepositories$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$TopRepositories$viewer$topRepositories$nodes<
                          Query$TopRepositories$viewer$topRepositories$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$TopRepositories$viewer$topRepositories$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories<TRes>
    implements CopyWith$Query$TopRepositories$viewer$topRepositories<TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories(this._res);

  TRes _res;

  call({
    Query$TopRepositories$viewer$topRepositories$pageInfo? pageInfo,
    List<Query$TopRepositories$viewer$topRepositories$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo.stub(
              _res);

  nodes(_fn) => _res;
}

class Query$TopRepositories$viewer$topRepositories$pageInfo {
  Query$TopRepositories$viewer$topRepositories$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$TopRepositories$viewer$topRepositories$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TopRepositories$viewer$topRepositories$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$pageInfo
    on Query$TopRepositories$viewer$topRepositories$pageInfo {
  CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo<
          Query$TopRepositories$viewer$topRepositories$pageInfo>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo(
    Query$TopRepositories$viewer$topRepositories$pageInfo instance,
    TRes Function(Query$TopRepositories$viewer$topRepositories$pageInfo) then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$pageInfo;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$pageInfo<TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo<TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$pageInfo(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$pageInfo _instance;

  final TRes Function(Query$TopRepositories$viewer$topRepositories$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopRepositories$viewer$topRepositories$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$pageInfo<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$pageInfo<TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$pageInfo(
      this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$TopRepositories$viewer$topRepositories$nodes {
  Query$TopRepositories$viewer$topRepositories$nodes({
    required this.name,
    required this.url,
    this.description,
    this.homepageUrl,
    required this.id,
    this.defaultBranchRef,
    this.$__typename = 'Repository',
  });

  factory Query$TopRepositories$viewer$topRepositories$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$url = json['url'];
    final l$description = json['description'];
    final l$homepageUrl = json['homepageUrl'];
    final l$id = json['id'];
    final l$defaultBranchRef = json['defaultBranchRef'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$nodes(
      name: (l$name as String),
      url: (l$url as String),
      description: (l$description as String?),
      homepageUrl: (l$homepageUrl as String?),
      id: (l$id as String),
      defaultBranchRef: l$defaultBranchRef == null
          ? null
          : Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef
              .fromJson((l$defaultBranchRef as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String url;

  final String? description;

  final String? homepageUrl;

  final String id;

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef?
      defaultBranchRef;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$homepageUrl = homepageUrl;
    _resultData['homepageUrl'] = l$homepageUrl;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$defaultBranchRef = defaultBranchRef;
    _resultData['defaultBranchRef'] = l$defaultBranchRef?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$url = url;
    final l$description = description;
    final l$homepageUrl = homepageUrl;
    final l$id = id;
    final l$defaultBranchRef = defaultBranchRef;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$url,
      l$description,
      l$homepageUrl,
      l$id,
      l$defaultBranchRef,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TopRepositories$viewer$topRepositories$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$homepageUrl = homepageUrl;
    final lOther$homepageUrl = other.homepageUrl;
    if (l$homepageUrl != lOther$homepageUrl) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$defaultBranchRef = defaultBranchRef;
    final lOther$defaultBranchRef = other.defaultBranchRef;
    if (l$defaultBranchRef != lOther$defaultBranchRef) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes
    on Query$TopRepositories$viewer$topRepositories$nodes {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes<
          Query$TopRepositories$viewer$topRepositories$nodes>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes(
    Query$TopRepositories$viewer$topRepositories$nodes instance,
    TRes Function(Query$TopRepositories$viewer$topRepositories$nodes) then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes;

  TRes call({
    String? name,
    String? url,
    String? description,
    String? homepageUrl,
    String? id,
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef?
        defaultBranchRef,
    String? $__typename,
  });
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
      TRes> get defaultBranchRef;
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes<TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes<TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes _instance;

  final TRes Function(Query$TopRepositories$viewer$topRepositories$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? url = _undefined,
    Object? description = _undefined,
    Object? homepageUrl = _undefined,
    Object? id = _undefined,
    Object? defaultBranchRef = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopRepositories$viewer$topRepositories$nodes(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        url: url == _undefined || url == null ? _instance.url : (url as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        homepageUrl: homepageUrl == _undefined
            ? _instance.homepageUrl
            : (homepageUrl as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        defaultBranchRef: defaultBranchRef == _undefined
            ? _instance.defaultBranchRef
            : (defaultBranchRef
                as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
      TRes> get defaultBranchRef {
    final local$defaultBranchRef = _instance.defaultBranchRef;
    return local$defaultBranchRef == null
        ? CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef
            .stub(_then(_instance))
        : CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef(
            local$defaultBranchRef, (e) => call(defaultBranchRef: e));
  }
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes<TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes<TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes(
      this._res);

  TRes _res;

  call({
    String? name,
    String? url,
    String? description,
    String? homepageUrl,
    String? id,
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef?
        defaultBranchRef,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
          TRes>
      get defaultBranchRef =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef
              .stub(_res);
}

class Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef {
  Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef({
    required this.name,
    this.target,
    this.$__typename = 'Ref',
  });

  factory Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$target = json['target'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef(
      name: (l$name as String),
      target: l$target == null
          ? null
          : Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target
              .fromJson((l$target as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target?
      target;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$target = target;
    _resultData['target'] = l$target?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$target = target;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$target,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$target = target;
    final lOther$target = other.target;
    if (l$target != lOther$target) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef
    on Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef(
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef
        instance,
    TRes Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef)
        then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef;

  TRes call({
    String? name,
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target?
        target,
    String? $__typename,
  });
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
      TRes> get target;
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
            TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef
      _instance;

  final TRes Function(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? target = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        target: target == _undefined
            ? _instance.target
            : (target
                as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
      TRes> get target {
    final local$target = _instance.target;
    return local$target == null
        ? CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target
            .stub(_then(_instance))
        : CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target(
            local$target, (e) => call(target: e));
  }
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef<
            TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef(
      this._res);

  TRes _res;

  call({
    String? name,
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target?
        target,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
          TRes>
      get target =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target
              .stub(_res);
}

class Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target(
      {required this.$__typename});

  factory Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Commit":
        return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
            .fromJson(json);

      case "Blob":
        return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
            .fromJson(json);

      case "Tag":
        return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
            .fromJson(json);

      case "Tree":
        return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target
    on Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit)
        commit,
    required _T Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob)
        blob,
    required _T Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag)
        tag,
    required _T Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree)
        tree,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Commit":
        return commit(this
            as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit);

      case "Blob":
        return blob(this
            as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob);

      case "Tag":
        return tag(this
            as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag);

      case "Tree":
        return tree(this
            as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit)?
        commit,
    _T Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob)?
        blob,
    _T Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag)?
        tag,
    _T Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree)?
        tree,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Commit":
        if (commit != null) {
          return commit(this
              as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit);
        } else {
          return orElse();
        }

      case "Blob":
        if (blob != null) {
          return blob(this
              as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob);
        } else {
          return orElse();
        }

      case "Tag":
        if (tag != null) {
          return tag(this
              as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag);
        } else {
          return orElse();
        }

      case "Tree":
        if (tree != null) {
          return tree(this
              as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target(
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target
        instance,
    TRes Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target)
        then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
            TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target
      _instance;

  final TRes Function(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target<
            TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
    implements
        Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit({
    required this.authorCount,
    required this.totalCount,
    this.$__typename = 'Commit',
  });

  factory Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit.fromJson(
      Map<String, dynamic> json) {
    final l$authorCount = json['authorCount'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
      authorCount:
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
              .fromJson((l$authorCount as Map<String, dynamic>)),
      totalCount:
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
              .fromJson((l$totalCount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
      authorCount;

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
      totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authorCount = authorCount;
    _resultData['authorCount'] = l$authorCount.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authorCount = authorCount;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$authorCount,
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authorCount = authorCount;
    final lOther$authorCount = other.authorCount;
    if (l$authorCount != lOther$authorCount) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
    on Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
        instance,
    TRes Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit)
        then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit;

  TRes call({
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount?
        authorCount,
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount?
        totalCount,
    String? $__typename,
  });
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
      TRes> get authorCount;
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
      TRes> get totalCount;
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
            TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
      _instance;

  final TRes Function(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authorCount = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
        authorCount: authorCount == _undefined || authorCount == null
            ? _instance.authorCount
            : (authorCount
                as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount
                as Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
      TRes> get authorCount {
    final local$authorCount = _instance.authorCount;
    return CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
        local$authorCount, (e) => call(authorCount: e));
  }

  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
      TRes> get totalCount {
    final local$totalCount = _instance.totalCount;
    return CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
        local$totalCount, (e) => call(totalCount: e));
  }
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
            TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
      this._res);

  TRes _res;

  call({
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount?
        authorCount,
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount?
        totalCount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
          TRes>
      get authorCount =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
              .stub(_res);

  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
          TRes>
      get totalCount =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
              .stub(_res);
}

class Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount {
  Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount({
    required this.totalCount,
    this.$__typename = 'CommitHistoryConnection',
  });

  factory Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
    on Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
        instance,
    TRes Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount)
        then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount;

  TRes call({
    int? totalCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
            TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
      _instance;

  final TRes Function(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
            TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
      this._res);

  TRes _res;

  call({
    int? totalCount,
    String? $__typename,
  }) =>
      _res;
}

class Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount {
  Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount({
    required this.totalCount,
    this.$__typename = 'CommitHistoryConnection',
  });

  factory Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
    on Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
        instance,
    TRes Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount)
        then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount;

  TRes call({
    int? totalCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
            TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
      _instance;

  final TRes Function(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
            TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
      this._res);

  TRes _res;

  call({
    int? totalCount,
    String? $__typename,
  }) =>
      _res;
}

class Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
    implements
        Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
      {this.$__typename = 'Blob'});

  factory Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
    on Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
        instance,
    TRes Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob)
        then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
            TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
      _instance;

  final TRes Function(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
            TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
    implements
        Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
      {this.$__typename = 'Tag'});

  factory Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
    on Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
        instance,
    TRes Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag)
        then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
            TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
      _instance;

  final TRes Function(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
            TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
    implements
        Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
      {this.$__typename = 'Tree'});

  factory Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
    on Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree {
  CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree>
      get copyWith =>
          CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
    TRes> {
  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
    Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
        instance,
    TRes Function(
            Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree)
        then,
  ) = _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree;

  factory CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
            TRes> {
  _CopyWithImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
    this._instance,
    this._then,
  );

  final Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
      _instance;

  final TRes Function(
          Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
        TRes>
    implements
        CopyWith$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
            TRes> {
  _CopyWithStubImpl$Query$TopRepositories$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
