import 'package:gql/ast.dart';

class Variables$Query$Viewer {
  factory Variables$Query$Viewer({
    required String authorId,
    required int nRepositories,
  }) =>
      Variables$Query$Viewer._({
        r'authorId': authorId,
        r'nRepositories': nRepositories,
      });

  Variables$Query$Viewer._(this._$data);

  factory Variables$Query$Viewer.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$authorId = data['authorId'];
    result$data['authorId'] = (l$authorId as String);
    final l$nRepositories = data['nRepositories'];
    result$data['nRepositories'] = (l$nRepositories as int);
    return Variables$Query$Viewer._(result$data);
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

  CopyWith$Variables$Query$Viewer<Variables$Query$Viewer> get copyWith =>
      CopyWith$Variables$Query$Viewer(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Viewer || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Viewer<TRes> {
  factory CopyWith$Variables$Query$Viewer(
    Variables$Query$Viewer instance,
    TRes Function(Variables$Query$Viewer) then,
  ) = _CopyWithImpl$Variables$Query$Viewer;

  factory CopyWith$Variables$Query$Viewer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Viewer;

  TRes call({
    String? authorId,
    int? nRepositories,
  });
}

class _CopyWithImpl$Variables$Query$Viewer<TRes>
    implements CopyWith$Variables$Query$Viewer<TRes> {
  _CopyWithImpl$Variables$Query$Viewer(
    this._instance,
    this._then,
  );

  final Variables$Query$Viewer _instance;

  final TRes Function(Variables$Query$Viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authorId = _undefined,
    Object? nRepositories = _undefined,
  }) =>
      _then(Variables$Query$Viewer._({
        ..._instance._$data,
        if (authorId != _undefined && authorId != null)
          'authorId': (authorId as String),
        if (nRepositories != _undefined && nRepositories != null)
          'nRepositories': (nRepositories as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$Viewer<TRes>
    implements CopyWith$Variables$Query$Viewer<TRes> {
  _CopyWithStubImpl$Variables$Query$Viewer(this._res);

  TRes _res;

  call({
    String? authorId,
    int? nRepositories,
  }) =>
      _res;
}

class Query$Viewer {
  Query$Viewer({
    required this.viewer,
    this.$__typename = 'Query',
  });

  factory Query$Viewer.fromJson(Map<String, dynamic> json) {
    final l$viewer = json['viewer'];
    final l$$__typename = json['__typename'];
    return Query$Viewer(
      viewer: Query$Viewer$viewer.fromJson((l$viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Viewer$viewer viewer;

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
    if (other is! Query$Viewer || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Viewer on Query$Viewer {
  CopyWith$Query$Viewer<Query$Viewer> get copyWith => CopyWith$Query$Viewer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Viewer<TRes> {
  factory CopyWith$Query$Viewer(
    Query$Viewer instance,
    TRes Function(Query$Viewer) then,
  ) = _CopyWithImpl$Query$Viewer;

  factory CopyWith$Query$Viewer.stub(TRes res) = _CopyWithStubImpl$Query$Viewer;

  TRes call({
    Query$Viewer$viewer? viewer,
    String? $__typename,
  });
  CopyWith$Query$Viewer$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$Viewer<TRes> implements CopyWith$Query$Viewer<TRes> {
  _CopyWithImpl$Query$Viewer(
    this._instance,
    this._then,
  );

  final Query$Viewer _instance;

  final TRes Function(Query$Viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer(
        viewer: viewer == _undefined || viewer == null
            ? _instance.viewer
            : (viewer as Query$Viewer$viewer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Viewer$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return CopyWith$Query$Viewer$viewer(local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$Viewer<TRes>
    implements CopyWith$Query$Viewer<TRes> {
  _CopyWithStubImpl$Query$Viewer(this._res);

  TRes _res;

  call({
    Query$Viewer$viewer? viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Viewer$viewer<TRes> get viewer =>
      CopyWith$Query$Viewer$viewer.stub(_res);
}

const documentNodeQueryViewer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Viewer'),
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

class Query$Viewer$viewer {
  Query$Viewer$viewer({
    required this.topRepositories,
    this.$__typename = 'User',
  });

  factory Query$Viewer$viewer.fromJson(Map<String, dynamic> json) {
    final l$topRepositories = json['topRepositories'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer(
      topRepositories: Query$Viewer$viewer$topRepositories.fromJson(
          (l$topRepositories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Viewer$viewer$topRepositories topRepositories;

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
    if (other is! Query$Viewer$viewer || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Viewer$viewer on Query$Viewer$viewer {
  CopyWith$Query$Viewer$viewer<Query$Viewer$viewer> get copyWith =>
      CopyWith$Query$Viewer$viewer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Viewer$viewer<TRes> {
  factory CopyWith$Query$Viewer$viewer(
    Query$Viewer$viewer instance,
    TRes Function(Query$Viewer$viewer) then,
  ) = _CopyWithImpl$Query$Viewer$viewer;

  factory CopyWith$Query$Viewer$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer;

  TRes call({
    Query$Viewer$viewer$topRepositories? topRepositories,
    String? $__typename,
  });
  CopyWith$Query$Viewer$viewer$topRepositories<TRes> get topRepositories;
}

class _CopyWithImpl$Query$Viewer$viewer<TRes>
    implements CopyWith$Query$Viewer$viewer<TRes> {
  _CopyWithImpl$Query$Viewer$viewer(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer _instance;

  final TRes Function(Query$Viewer$viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topRepositories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$viewer(
        topRepositories:
            topRepositories == _undefined || topRepositories == null
                ? _instance.topRepositories
                : (topRepositories as Query$Viewer$viewer$topRepositories),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Viewer$viewer$topRepositories<TRes> get topRepositories {
    final local$topRepositories = _instance.topRepositories;
    return CopyWith$Query$Viewer$viewer$topRepositories(
        local$topRepositories, (e) => call(topRepositories: e));
  }
}

class _CopyWithStubImpl$Query$Viewer$viewer<TRes>
    implements CopyWith$Query$Viewer$viewer<TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer(this._res);

  TRes _res;

  call({
    Query$Viewer$viewer$topRepositories? topRepositories,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Viewer$viewer$topRepositories<TRes> get topRepositories =>
      CopyWith$Query$Viewer$viewer$topRepositories.stub(_res);
}

class Query$Viewer$viewer$topRepositories {
  Query$Viewer$viewer$topRepositories({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'RepositoryConnection',
  });

  factory Query$Viewer$viewer$topRepositories.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories(
      pageInfo: Query$Viewer$viewer$topRepositories$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Viewer$viewer$topRepositories$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Viewer$viewer$topRepositories$pageInfo pageInfo;

  final List<Query$Viewer$viewer$topRepositories$nodes?>? nodes;

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
    if (other is! Query$Viewer$viewer$topRepositories ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories
    on Query$Viewer$viewer$topRepositories {
  CopyWith$Query$Viewer$viewer$topRepositories<
          Query$Viewer$viewer$topRepositories>
      get copyWith => CopyWith$Query$Viewer$viewer$topRepositories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories<TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories(
    Query$Viewer$viewer$topRepositories instance,
    TRes Function(Query$Viewer$viewer$topRepositories) then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories;

  factory CopyWith$Query$Viewer$viewer$topRepositories.stub(TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories;

  TRes call({
    Query$Viewer$viewer$topRepositories$pageInfo? pageInfo,
    List<Query$Viewer$viewer$topRepositories$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$Viewer$viewer$topRepositories$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$Viewer$viewer$topRepositories$nodes?>? Function(
              Iterable<
                  CopyWith$Query$Viewer$viewer$topRepositories$nodes<
                      Query$Viewer$viewer$topRepositories$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories<TRes>
    implements CopyWith$Query$Viewer$viewer$topRepositories<TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories _instance;

  final TRes Function(Query$Viewer$viewer$topRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$viewer$topRepositories(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$Viewer$viewer$topRepositories$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$Viewer$viewer$topRepositories$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Viewer$viewer$topRepositories$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Viewer$viewer$topRepositories$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$Viewer$viewer$topRepositories$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$Viewer$viewer$topRepositories$nodes<
                          Query$Viewer$viewer$topRepositories$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$Viewer$viewer$topRepositories$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories<TRes>
    implements CopyWith$Query$Viewer$viewer$topRepositories<TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories(this._res);

  TRes _res;

  call({
    Query$Viewer$viewer$topRepositories$pageInfo? pageInfo,
    List<Query$Viewer$viewer$topRepositories$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Viewer$viewer$topRepositories$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Viewer$viewer$topRepositories$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$Viewer$viewer$topRepositories$pageInfo {
  Query$Viewer$viewer$topRepositories$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Viewer$viewer$topRepositories$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$pageInfo(
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
    if (other is! Query$Viewer$viewer$topRepositories$pageInfo ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$pageInfo
    on Query$Viewer$viewer$topRepositories$pageInfo {
  CopyWith$Query$Viewer$viewer$topRepositories$pageInfo<
          Query$Viewer$viewer$topRepositories$pageInfo>
      get copyWith => CopyWith$Query$Viewer$viewer$topRepositories$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$pageInfo<TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$pageInfo(
    Query$Viewer$viewer$topRepositories$pageInfo instance,
    TRes Function(Query$Viewer$viewer$topRepositories$pageInfo) then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$pageInfo;

  factory CopyWith$Query$Viewer$viewer$topRepositories$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$pageInfo<TRes>
    implements CopyWith$Query$Viewer$viewer$topRepositories$pageInfo<TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$pageInfo _instance;

  final TRes Function(Query$Viewer$viewer$topRepositories$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$viewer$topRepositories$pageInfo(
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

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$pageInfo<TRes>
    implements CopyWith$Query$Viewer$viewer$topRepositories$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Viewer$viewer$topRepositories$nodes {
  Query$Viewer$viewer$topRepositories$nodes({
    required this.name,
    required this.url,
    this.description,
    this.homepageUrl,
    required this.id,
    this.defaultBranchRef,
    this.$__typename = 'Repository',
  });

  factory Query$Viewer$viewer$topRepositories$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$url = json['url'];
    final l$description = json['description'];
    final l$homepageUrl = json['homepageUrl'];
    final l$id = json['id'];
    final l$defaultBranchRef = json['defaultBranchRef'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$nodes(
      name: (l$name as String),
      url: (l$url as String),
      description: (l$description as String?),
      homepageUrl: (l$homepageUrl as String?),
      id: (l$id as String),
      defaultBranchRef: l$defaultBranchRef == null
          ? null
          : Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef.fromJson(
              (l$defaultBranchRef as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String url;

  final String? description;

  final String? homepageUrl;

  final String id;

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef?
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
    if (other is! Query$Viewer$viewer$topRepositories$nodes ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes
    on Query$Viewer$viewer$topRepositories$nodes {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes<
          Query$Viewer$viewer$topRepositories$nodes>
      get copyWith => CopyWith$Query$Viewer$viewer$topRepositories$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes<TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes(
    Query$Viewer$viewer$topRepositories$nodes instance,
    TRes Function(Query$Viewer$viewer$topRepositories$nodes) then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes;

  TRes call({
    String? name,
    String? url,
    String? description,
    String? homepageUrl,
    String? id,
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef?
        defaultBranchRef,
    String? $__typename,
  });
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<TRes>
      get defaultBranchRef;
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes<TRes>
    implements CopyWith$Query$Viewer$viewer$topRepositories$nodes<TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes _instance;

  final TRes Function(Query$Viewer$viewer$topRepositories$nodes) _then;

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
      _then(Query$Viewer$viewer$topRepositories$nodes(
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
                as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<TRes>
      get defaultBranchRef {
    final local$defaultBranchRef = _instance.defaultBranchRef;
    return local$defaultBranchRef == null
        ? CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef
            .stub(_then(_instance))
        : CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef(
            local$defaultBranchRef, (e) => call(defaultBranchRef: e));
  }
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes<TRes>
    implements CopyWith$Query$Viewer$viewer$topRepositories$nodes<TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes(this._res);

  TRes _res;

  call({
    String? name,
    String? url,
    String? description,
    String? homepageUrl,
    String? id,
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef?
        defaultBranchRef,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<TRes>
      get defaultBranchRef =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef
              .stub(_res);
}

class Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef {
  Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef({
    required this.name,
    this.target,
    this.$__typename = 'Ref',
  });

  factory Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$target = json['target'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef(
      name: (l$name as String),
      target: l$target == null
          ? null
          : Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target
              .fromJson((l$target as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target?
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
    if (other is! Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef
    on Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef>
      get copyWith =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<
    TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef(
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef instance,
    TRes Function(Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef)
        then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef;

  TRes call({
    String? name,
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target? target,
    String? $__typename,
  });
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
      TRes> get target;
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<
            TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef _instance;

  final TRes Function(
      Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? target = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        target: target == _undefined
            ? _instance.target
            : (target
                as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
      TRes> get target {
    final local$target = _instance.target;
    return local$target == null
        ? CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target
            .stub(_then(_instance))
        : CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target(
            local$target, (e) => call(target: e));
  }
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef<
            TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef(
      this._res);

  TRes _res;

  call({
    String? name,
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target? target,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
          TRes>
      get target =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target
              .stub(_res);
}

class Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target(
      {required this.$__typename});

  factory Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Commit":
        return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
            .fromJson(json);

      case "Blob":
        return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
            .fromJson(json);

      case "Tag":
        return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
            .fromJson(json);

      case "Tree":
        return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target(
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
            is! Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target
    on Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target>
      get copyWith =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit)
        commit,
    required _T Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob)
        blob,
    required _T Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag)
        tag,
    required _T Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree)
        tree,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Commit":
        return commit(this
            as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit);

      case "Blob":
        return blob(this
            as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob);

      case "Tag":
        return tag(this
            as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag);

      case "Tree":
        return tree(this
            as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit)?
        commit,
    _T Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob)?
        blob,
    _T Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag)?
        tag,
    _T Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree)?
        tree,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Commit":
        if (commit != null) {
          return commit(this
              as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit);
        } else {
          return orElse();
        }

      case "Blob":
        if (blob != null) {
          return blob(this
              as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob);
        } else {
          return orElse();
        }

      case "Tag":
        if (tag != null) {
          return tag(this
              as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag);
        } else {
          return orElse();
        }

      case "Tree":
        if (tree != null) {
          return tree(this
              as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
    TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target(
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target instance,
    TRes Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target)
        then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
            TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target
      _instance;

  final TRes Function(
      Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target<
            TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
    implements
        Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit({
    required this.authorCount,
    required this.totalCount,
    this.$__typename = 'Commit',
  });

  factory Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit.fromJson(
      Map<String, dynamic> json) {
    final l$authorCount = json['authorCount'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
      authorCount:
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
              .fromJson((l$authorCount as Map<String, dynamic>)),
      totalCount:
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
              .fromJson((l$totalCount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
      authorCount;

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
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
            is! Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
    on Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit>
      get copyWith =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
    TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
        instance,
    TRes Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit)
        then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit;

  TRes call({
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount?
        authorCount,
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount?
        totalCount,
    String? $__typename,
  });
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
      TRes> get authorCount;
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
      TRes> get totalCount;
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
            TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit
      _instance;

  final TRes Function(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authorCount = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
        authorCount: authorCount == _undefined || authorCount == null
            ? _instance.authorCount
            : (authorCount
                as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount
                as Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
      TRes> get authorCount {
    final local$authorCount = _instance.authorCount;
    return CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
        local$authorCount, (e) => call(authorCount: e));
  }

  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
      TRes> get totalCount {
    final local$totalCount = _instance.totalCount;
    return CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
        local$totalCount, (e) => call(totalCount: e));
  }
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit<
            TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit(
      this._res);

  TRes _res;

  call({
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount?
        authorCount,
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount?
        totalCount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
          TRes>
      get authorCount =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
              .stub(_res);

  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
          TRes>
      get totalCount =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
              .stub(_res);
}

class Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount {
  Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount({
    required this.totalCount,
    this.$__typename = 'CommitHistoryConnection',
  });

  factory Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
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
            is! Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
    on Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount>
      get copyWith =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
    TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
        instance,
    TRes Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount)
        then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount;

  TRes call({
    int? totalCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
            TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount
      _instance;

  final TRes Function(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount<
            TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$authorCount(
      this._res);

  TRes _res;

  call({
    int? totalCount,
    String? $__typename,
  }) =>
      _res;
}

class Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount {
  Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount({
    required this.totalCount,
    this.$__typename = 'CommitHistoryConnection',
  });

  factory Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
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
            is! Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
    on Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount>
      get copyWith =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
    TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
        instance,
    TRes Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount)
        then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount;

  TRes call({
    int? totalCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
            TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount
      _instance;

  final TRes Function(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount<
            TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Commit$totalCount(
      this._res);

  TRes _res;

  call({
    int? totalCount,
    String? $__typename,
  }) =>
      _res;
}

class Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
    implements
        Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
      {this.$__typename = 'Blob'});

  factory Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
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
            is! Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
    on Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob>
      get copyWith =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
    TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
        instance,
    TRes Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob)
        then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
            TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob
      _instance;

  final TRes Function(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob<
            TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Blob(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
    implements
        Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
      {this.$__typename = 'Tag'});

  factory Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
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
            is! Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
    on Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag>
      get copyWith =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
    TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
        instance,
    TRes Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag)
        then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
            TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag
      _instance;

  final TRes Function(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag<
            TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tag(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
    implements
        Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target {
  Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
      {this.$__typename = 'Tree'});

  factory Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
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
            is! Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree ||
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

extension UtilityExtension$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
    on Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree {
  CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree>
      get copyWith =>
          CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
    TRes> {
  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
    Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
        instance,
    TRes Function(
            Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree)
        then,
  ) = _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree;

  factory CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
            TRes> {
  _CopyWithImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
    this._instance,
    this._then,
  );

  final Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree
      _instance;

  final TRes Function(
          Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
        TRes>
    implements
        CopyWith$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree<
            TRes> {
  _CopyWithStubImpl$Query$Viewer$viewer$topRepositories$nodes$defaultBranchRef$target$$Tree(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
