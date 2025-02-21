import 'package:gql/ast.dart';

class Query$User {
  Query$User({
    required this.viewer,
    this.$__typename = 'Query',
  });

  factory Query$User.fromJson(Map<String, dynamic> json) {
    final l$viewer = json['viewer'];
    final l$$__typename = json['__typename'];
    return Query$User(
      viewer: Query$User$viewer.fromJson((l$viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$viewer viewer;

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
    if (other is! Query$User || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$User on Query$User {
  CopyWith$Query$User<Query$User> get copyWith => CopyWith$Query$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User<TRes> {
  factory CopyWith$Query$User(
    Query$User instance,
    TRes Function(Query$User) then,
  ) = _CopyWithImpl$Query$User;

  factory CopyWith$Query$User.stub(TRes res) = _CopyWithStubImpl$Query$User;

  TRes call({
    Query$User$viewer? viewer,
    String? $__typename,
  });
  CopyWith$Query$User$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithImpl$Query$User(
    this._instance,
    this._then,
  );

  final Query$User _instance;

  final TRes Function(Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User(
        viewer: viewer == _undefined || viewer == null
            ? _instance.viewer
            : (viewer as Query$User$viewer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$User$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return CopyWith$Query$User$viewer(local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithStubImpl$Query$User(this._res);

  TRes _res;

  call({
    Query$User$viewer? viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$User$viewer<TRes> get viewer =>
      CopyWith$Query$User$viewer.stub(_res);
}

const documentNodeQueryUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'websiteUrl'),
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
]);

class Query$User$viewer {
  Query$User$viewer({
    required this.id,
    this.name,
    required this.email,
    this.websiteUrl,
    this.$__typename = 'User',
  });

  factory Query$User$viewer.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$websiteUrl = json['websiteUrl'];
    final l$$__typename = json['__typename'];
    return Query$User$viewer(
      id: (l$id as String),
      name: (l$name as String?),
      email: (l$email as String),
      websiteUrl: (l$websiteUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String email;

  final String? websiteUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$websiteUrl = websiteUrl;
    _resultData['websiteUrl'] = l$websiteUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$websiteUrl = websiteUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$websiteUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$viewer || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$websiteUrl = websiteUrl;
    final lOther$websiteUrl = other.websiteUrl;
    if (l$websiteUrl != lOther$websiteUrl) {
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

extension UtilityExtension$Query$User$viewer on Query$User$viewer {
  CopyWith$Query$User$viewer<Query$User$viewer> get copyWith =>
      CopyWith$Query$User$viewer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User$viewer<TRes> {
  factory CopyWith$Query$User$viewer(
    Query$User$viewer instance,
    TRes Function(Query$User$viewer) then,
  ) = _CopyWithImpl$Query$User$viewer;

  factory CopyWith$Query$User$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$User$viewer;

  TRes call({
    String? id,
    String? name,
    String? email,
    String? websiteUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$User$viewer<TRes>
    implements CopyWith$Query$User$viewer<TRes> {
  _CopyWithImpl$Query$User$viewer(
    this._instance,
    this._then,
  );

  final Query$User$viewer _instance;

  final TRes Function(Query$User$viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? websiteUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$viewer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        websiteUrl: websiteUrl == _undefined
            ? _instance.websiteUrl
            : (websiteUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$User$viewer<TRes>
    implements CopyWith$Query$User$viewer<TRes> {
  _CopyWithStubImpl$Query$User$viewer(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? email,
    String? websiteUrl,
    String? $__typename,
  }) =>
      _res;
}
