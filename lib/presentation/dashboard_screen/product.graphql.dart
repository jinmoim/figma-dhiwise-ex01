import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Product {
  factory Variables$Query$Product({required int id}) =>
      Variables$Query$Product._({
        r'id': id,
      });

  Variables$Query$Product._(this._$data);

  factory Variables$Query$Product.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$Product._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Product<Variables$Query$Product> get copyWith =>
      CopyWith$Variables$Query$Product(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Product) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$Product<TRes> {
  factory CopyWith$Variables$Query$Product(
    Variables$Query$Product instance,
    TRes Function(Variables$Query$Product) then,
  ) = _CopyWithImpl$Variables$Query$Product;

  factory CopyWith$Variables$Query$Product.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Product;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$Product<TRes>
    implements CopyWith$Variables$Query$Product<TRes> {
  _CopyWithImpl$Variables$Query$Product(
    this._instance,
    this._then,
  );

  final Variables$Query$Product _instance;

  final TRes Function(Variables$Query$Product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Product._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$Product<TRes>
    implements CopyWith$Variables$Query$Product<TRes> {
  _CopyWithStubImpl$Variables$Query$Product(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$Product {
  Query$Product({this.product});

  factory Query$Product.fromJson(Map<String, dynamic> json) {
    final l$product = json['product'];
    return Query$Product(
        product: l$product == null
            ? null
            : Query$Product$product.fromJson(
                (l$product as Map<String, dynamic>)));
  }

  final Query$Product$product? product;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product = product;
    return Object.hashAll([l$product]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Product) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product on Query$Product {
  CopyWith$Query$Product<Query$Product> get copyWith => CopyWith$Query$Product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Product<TRes> {
  factory CopyWith$Query$Product(
    Query$Product instance,
    TRes Function(Query$Product) then,
  ) = _CopyWithImpl$Query$Product;

  factory CopyWith$Query$Product.stub(TRes res) =
      _CopyWithStubImpl$Query$Product;

  TRes call({Query$Product$product? product});
  CopyWith$Query$Product$product<TRes> get product;
}

class _CopyWithImpl$Query$Product<TRes>
    implements CopyWith$Query$Product<TRes> {
  _CopyWithImpl$Query$Product(
    this._instance,
    this._then,
  );

  final Query$Product _instance;

  final TRes Function(Query$Product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? product = _undefined}) => _then(Query$Product(
      product: product == _undefined
          ? _instance.product
          : (product as Query$Product$product?)));
  CopyWith$Query$Product$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$Product$product.stub(_then(_instance))
        : CopyWith$Query$Product$product(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Query$Product<TRes>
    implements CopyWith$Query$Product<TRes> {
  _CopyWithStubImpl$Query$Product(this._res);

  TRes _res;

  call({Query$Product$product? product}) => _res;
  CopyWith$Query$Product$product<TRes> get product =>
      CopyWith$Query$Product$product.stub(_res);
}

const documentNodeQueryProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Product'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'product'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Query$Product _parserFn$Query$Product(Map<String, dynamic> data) =>
    Query$Product.fromJson(data);
typedef OnQueryComplete$Query$Product = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Product?,
);

class Options$Query$Product extends graphql.QueryOptions<Query$Product> {
  Options$Query$Product({
    String? operationName,
    required Variables$Query$Product variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Product? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Product? onComplete,
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
                    data == null ? null : _parserFn$Query$Product(data),
                  ),
          onError: onError,
          document: documentNodeQueryProduct,
          parserFn: _parserFn$Query$Product,
        );

  final OnQueryComplete$Query$Product? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Product
    extends graphql.WatchQueryOptions<Query$Product> {
  WatchOptions$Query$Product({
    String? operationName,
    required Variables$Query$Product variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Product? typedOptimisticResult,
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
          document: documentNodeQueryProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Product,
        );
}

class FetchMoreOptions$Query$Product extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Product({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Product variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryProduct,
        );
}

extension ClientExtension$Query$Product on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Product>> query$Product(
          Options$Query$Product options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Product> watchQuery$Product(
          WatchOptions$Query$Product options) =>
      this.watchQuery(options);
  void writeQuery$Product({
    required Query$Product data,
    required Variables$Query$Product variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryProduct),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Product? readQuery$Product({
    required Variables$Query$Product variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryProduct),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Product.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Product> useQuery$Product(
        Options$Query$Product options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Product> useWatchQuery$Product(
        WatchOptions$Query$Product options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Product$Widget extends graphql_flutter.Query<Query$Product> {
  Query$Product$Widget({
    widgets.Key? key,
    required Options$Query$Product options,
    required graphql_flutter.QueryBuilder<Query$Product> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Product$product {
  Query$Product$product({
    required this.id,
    required this.name,
    required this.info,
    required this.price,
  });

  factory Query$Product$product.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$info = json['info'];
    final l$price = json['price'];
    return Query$Product$product(
      id: (l$id as int),
      name: (l$name as String),
      info: (l$info as String),
      price: (l$price as num).toDouble(),
    );
  }

  final int id;

  final String name;

  final String info;

  final double price;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$info = info;
    _resultData['info'] = l$info;
    final l$price = price;
    _resultData['price'] = l$price;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$info = info;
    final l$price = price;
    return Object.hashAll([
      l$id,
      l$name,
      l$info,
      l$price,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Product$product) || runtimeType != other.runtimeType) {
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
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product$product on Query$Product$product {
  CopyWith$Query$Product$product<Query$Product$product> get copyWith =>
      CopyWith$Query$Product$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Product$product<TRes> {
  factory CopyWith$Query$Product$product(
    Query$Product$product instance,
    TRes Function(Query$Product$product) then,
  ) = _CopyWithImpl$Query$Product$product;

  factory CopyWith$Query$Product$product.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product;

  TRes call({
    int? id,
    String? name,
    String? info,
    double? price,
  });
}

class _CopyWithImpl$Query$Product$product<TRes>
    implements CopyWith$Query$Product$product<TRes> {
  _CopyWithImpl$Query$Product$product(
    this._instance,
    this._then,
  );

  final Query$Product$product _instance;

  final TRes Function(Query$Product$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? info = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Query$Product$product(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        info: info == _undefined || info == null
            ? _instance.info
            : (info as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
      ));
}

class _CopyWithStubImpl$Query$Product$product<TRes>
    implements CopyWith$Query$Product$product<TRes> {
  _CopyWithStubImpl$Query$Product$product(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? info,
    double? price,
  }) =>
      _res;
}

class Query$GetAllProducts {
  Query$GetAllProducts({required this.list});

  factory Query$GetAllProducts.fromJson(Map<String, dynamic> json) {
    final l$list = json['list'];
    return Query$GetAllProducts(
        list: (l$list as List<dynamic>)
            .map((e) =>
                Query$GetAllProducts$list.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$GetAllProducts$list> list;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$list = list;
    _resultData['list'] = l$list.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$list = list;
    return Object.hashAll([Object.hashAll(l$list.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllProducts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$list = list;
    final lOther$list = other.list;
    if (l$list.length != lOther$list.length) {
      return false;
    }
    for (int i = 0; i < l$list.length; i++) {
      final l$list$entry = l$list[i];
      final lOther$list$entry = lOther$list[i];
      if (l$list$entry != lOther$list$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts on Query$GetAllProducts {
  CopyWith$Query$GetAllProducts<Query$GetAllProducts> get copyWith =>
      CopyWith$Query$GetAllProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllProducts<TRes> {
  factory CopyWith$Query$GetAllProducts(
    Query$GetAllProducts instance,
    TRes Function(Query$GetAllProducts) then,
  ) = _CopyWithImpl$Query$GetAllProducts;

  factory CopyWith$Query$GetAllProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts;

  TRes call({List<Query$GetAllProducts$list>? list});
  TRes list(
      Iterable<Query$GetAllProducts$list> Function(
              Iterable<
                  CopyWith$Query$GetAllProducts$list<
                      Query$GetAllProducts$list>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllProducts<TRes>
    implements CopyWith$Query$GetAllProducts<TRes> {
  _CopyWithImpl$Query$GetAllProducts(
    this._instance,
    this._then,
  );

  final Query$GetAllProducts _instance;

  final TRes Function(Query$GetAllProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? list = _undefined}) => _then(Query$GetAllProducts(
      list: list == _undefined || list == null
          ? _instance.list
          : (list as List<Query$GetAllProducts$list>)));
  TRes list(
          Iterable<Query$GetAllProducts$list> Function(
                  Iterable<
                      CopyWith$Query$GetAllProducts$list<
                          Query$GetAllProducts$list>>)
              _fn) =>
      call(
          list:
              _fn(_instance.list.map((e) => CopyWith$Query$GetAllProducts$list(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllProducts<TRes>
    implements CopyWith$Query$GetAllProducts<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts(this._res);

  TRes _res;

  call({List<Query$GetAllProducts$list>? list}) => _res;
  list(_fn) => _res;
}

const documentNodeQueryGetAllProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllProducts'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'list'),
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
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Query$GetAllProducts _parserFn$Query$GetAllProducts(
        Map<String, dynamic> data) =>
    Query$GetAllProducts.fromJson(data);
typedef OnQueryComplete$Query$GetAllProducts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllProducts?,
);

class Options$Query$GetAllProducts
    extends graphql.QueryOptions<Query$GetAllProducts> {
  Options$Query$GetAllProducts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllProducts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllProducts? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$GetAllProducts(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllProducts,
          parserFn: _parserFn$Query$GetAllProducts,
        );

  final OnQueryComplete$Query$GetAllProducts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllProducts
    extends graphql.WatchQueryOptions<Query$GetAllProducts> {
  WatchOptions$Query$GetAllProducts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllProducts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetAllProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllProducts,
        );
}

class FetchMoreOptions$Query$GetAllProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllProducts(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetAllProducts,
        );
}

extension ClientExtension$Query$GetAllProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllProducts>> query$GetAllProducts(
          [Options$Query$GetAllProducts? options]) async =>
      await this.query(options ?? Options$Query$GetAllProducts());
  graphql.ObservableQuery<Query$GetAllProducts> watchQuery$GetAllProducts(
          [WatchOptions$Query$GetAllProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllProducts());
  void writeQuery$GetAllProducts({
    required Query$GetAllProducts data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetAllProducts)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllProducts? readQuery$GetAllProducts({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAllProducts)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllProducts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllProducts> useQuery$GetAllProducts(
        [Options$Query$GetAllProducts? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAllProducts());
graphql.ObservableQuery<Query$GetAllProducts> useWatchQuery$GetAllProducts(
        [WatchOptions$Query$GetAllProducts? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetAllProducts());

class Query$GetAllProducts$Widget
    extends graphql_flutter.Query<Query$GetAllProducts> {
  Query$GetAllProducts$Widget({
    widgets.Key? key,
    Options$Query$GetAllProducts? options,
    required graphql_flutter.QueryBuilder<Query$GetAllProducts> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllProducts(),
          builder: builder,
        );
}

class Query$GetAllProducts$list {
  Query$GetAllProducts$list({
    required this.id,
    required this.name,
    required this.info,
    required this.price,
  });

  factory Query$GetAllProducts$list.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$info = json['info'];
    final l$price = json['price'];
    return Query$GetAllProducts$list(
      id: (l$id as int),
      name: (l$name as String),
      info: (l$info as String),
      price: (l$price as num).toDouble(),
    );
  }

  final int id;

  final String name;

  final String info;

  final double price;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$info = info;
    _resultData['info'] = l$info;
    final l$price = price;
    _resultData['price'] = l$price;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$info = info;
    final l$price = price;
    return Object.hashAll([
      l$id,
      l$name,
      l$info,
      l$price,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllProducts$list) ||
        runtimeType != other.runtimeType) {
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
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts$list
    on Query$GetAllProducts$list {
  CopyWith$Query$GetAllProducts$list<Query$GetAllProducts$list> get copyWith =>
      CopyWith$Query$GetAllProducts$list(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllProducts$list<TRes> {
  factory CopyWith$Query$GetAllProducts$list(
    Query$GetAllProducts$list instance,
    TRes Function(Query$GetAllProducts$list) then,
  ) = _CopyWithImpl$Query$GetAllProducts$list;

  factory CopyWith$Query$GetAllProducts$list.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$list;

  TRes call({
    int? id,
    String? name,
    String? info,
    double? price,
  });
}

class _CopyWithImpl$Query$GetAllProducts$list<TRes>
    implements CopyWith$Query$GetAllProducts$list<TRes> {
  _CopyWithImpl$Query$GetAllProducts$list(
    this._instance,
    this._then,
  );

  final Query$GetAllProducts$list _instance;

  final TRes Function(Query$GetAllProducts$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? info = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Query$GetAllProducts$list(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        info: info == _undefined || info == null
            ? _instance.info
            : (info as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
      ));
}

class _CopyWithStubImpl$Query$GetAllProducts$list<TRes>
    implements CopyWith$Query$GetAllProducts$list<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$list(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? info,
    double? price,
  }) =>
      _res;
}

class Variables$Mutation$CreateProduct {
  factory Variables$Mutation$CreateProduct({
    required String name,
    String? info,
    required double price,
  }) =>
      Variables$Mutation$CreateProduct._({
        r'name': name,
        if (info != null) r'info': info,
        r'price': price,
      });

  Variables$Mutation$CreateProduct._(this._$data);

  factory Variables$Mutation$CreateProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('info')) {
      final l$info = data['info'];
      result$data['info'] = (l$info as String?);
    }
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    return Variables$Mutation$CreateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  String? get info => (_$data['info'] as String?);
  double get price => (_$data['price'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('info')) {
      final l$info = info;
      result$data['info'] = l$info;
    }
    final l$price = price;
    result$data['price'] = l$price;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateProduct<Variables$Mutation$CreateProduct>
      get copyWith => CopyWith$Variables$Mutation$CreateProduct(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateProduct) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$info = info;
    final lOther$info = other.info;
    if (_$data.containsKey('info') != other._$data.containsKey('info')) {
      return false;
    }
    if (l$info != lOther$info) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$info = info;
    final l$price = price;
    return Object.hashAll([
      l$name,
      _$data.containsKey('info') ? l$info : const {},
      l$price,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateProduct<TRes> {
  factory CopyWith$Variables$Mutation$CreateProduct(
    Variables$Mutation$CreateProduct instance,
    TRes Function(Variables$Mutation$CreateProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateProduct;

  factory CopyWith$Variables$Mutation$CreateProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateProduct;

  TRes call({
    String? name,
    String? info,
    double? price,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateProduct _instance;

  final TRes Function(Variables$Mutation$CreateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? info = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Variables$Mutation$CreateProduct._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (info != _undefined) 'info': (info as String?),
        if (price != _undefined && price != null) 'price': (price as double),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateProduct(this._res);

  TRes _res;

  call({
    String? name,
    String? info,
    double? price,
  }) =>
      _res;
}

class Mutation$CreateProduct {
  Mutation$CreateProduct({required this.create});

  factory Mutation$CreateProduct.fromJson(Map<String, dynamic> json) {
    final l$create = json['create'];
    return Mutation$CreateProduct(
        create: Mutation$CreateProduct$create.fromJson(
            (l$create as Map<String, dynamic>)));
  }

  final Mutation$CreateProduct$create create;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$create = create;
    _resultData['create'] = l$create.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$create = create;
    return Object.hashAll([l$create]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateProduct) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct on Mutation$CreateProduct {
  CopyWith$Mutation$CreateProduct<Mutation$CreateProduct> get copyWith =>
      CopyWith$Mutation$CreateProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateProduct<TRes> {
  factory CopyWith$Mutation$CreateProduct(
    Mutation$CreateProduct instance,
    TRes Function(Mutation$CreateProduct) then,
  ) = _CopyWithImpl$Mutation$CreateProduct;

  factory CopyWith$Mutation$CreateProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct;

  TRes call({Mutation$CreateProduct$create? create});
  CopyWith$Mutation$CreateProduct$create<TRes> get create;
}

class _CopyWithImpl$Mutation$CreateProduct<TRes>
    implements CopyWith$Mutation$CreateProduct<TRes> {
  _CopyWithImpl$Mutation$CreateProduct(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct _instance;

  final TRes Function(Mutation$CreateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? create = _undefined}) => _then(Mutation$CreateProduct(
      create: create == _undefined || create == null
          ? _instance.create
          : (create as Mutation$CreateProduct$create)));
  CopyWith$Mutation$CreateProduct$create<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Mutation$CreateProduct$create(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateProduct<TRes>
    implements CopyWith$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct(this._res);

  TRes _res;

  call({Mutation$CreateProduct$create? create}) => _res;
  CopyWith$Mutation$CreateProduct$create<TRes> get create =>
      CopyWith$Mutation$CreateProduct$create.stub(_res);
}

const documentNodeMutationCreateProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'info')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'create'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'info'),
            value: VariableNode(name: NameNode(value: 'info')),
          ),
          ArgumentNode(
            name: NameNode(value: 'price'),
            value: VariableNode(name: NameNode(value: 'price')),
          ),
        ],
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
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Mutation$CreateProduct _parserFn$Mutation$CreateProduct(
        Map<String, dynamic> data) =>
    Mutation$CreateProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateProduct?,
);

class Options$Mutation$CreateProduct
    extends graphql.MutationOptions<Mutation$CreateProduct> {
  Options$Mutation$CreateProduct({
    String? operationName,
    required Variables$Mutation$CreateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateProduct,
          parserFn: _parserFn$Mutation$CreateProduct,
        );

  final OnMutationCompleted$Mutation$CreateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateProduct
    extends graphql.WatchQueryOptions<Mutation$CreateProduct> {
  WatchOptions$Mutation$CreateProduct({
    String? operationName,
    required Variables$Mutation$CreateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
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
          document: documentNodeMutationCreateProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateProduct,
        );
}

extension ClientExtension$Mutation$CreateProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateProduct>> mutate$CreateProduct(
          Options$Mutation$CreateProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateProduct> watchMutation$CreateProduct(
          WatchOptions$Mutation$CreateProduct options) =>
      this.watchMutation(options);
}

class Mutation$CreateProduct$HookResult {
  Mutation$CreateProduct$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateProduct runMutation;

  final graphql.QueryResult<Mutation$CreateProduct> result;
}

Mutation$CreateProduct$HookResult useMutation$CreateProduct(
    [WidgetOptions$Mutation$CreateProduct? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateProduct());
  return Mutation$CreateProduct$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateProduct> useWatchMutation$CreateProduct(
        WatchOptions$Mutation$CreateProduct options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateProduct
    extends graphql.MutationOptions<Mutation$CreateProduct> {
  WidgetOptions$Mutation$CreateProduct({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateProduct,
          parserFn: _parserFn$Mutation$CreateProduct,
        );

  final OnMutationCompleted$Mutation$CreateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateProduct
    = graphql.MultiSourceResult<Mutation$CreateProduct> Function(
  Variables$Mutation$CreateProduct, {
  Object? optimisticResult,
  Mutation$CreateProduct? typedOptimisticResult,
});
typedef Builder$Mutation$CreateProduct = widgets.Widget Function(
  RunMutation$Mutation$CreateProduct,
  graphql.QueryResult<Mutation$CreateProduct>?,
);

class Mutation$CreateProduct$Widget
    extends graphql_flutter.Mutation<Mutation$CreateProduct> {
  Mutation$CreateProduct$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateProduct? options,
    required Builder$Mutation$CreateProduct builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateProduct(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreateProduct$create {
  Mutation$CreateProduct$create({
    required this.id,
    required this.name,
    required this.info,
    required this.price,
  });

  factory Mutation$CreateProduct$create.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$info = json['info'];
    final l$price = json['price'];
    return Mutation$CreateProduct$create(
      id: (l$id as int),
      name: (l$name as String),
      info: (l$info as String),
      price: (l$price as num).toDouble(),
    );
  }

  final int id;

  final String name;

  final String info;

  final double price;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$info = info;
    _resultData['info'] = l$info;
    final l$price = price;
    _resultData['price'] = l$price;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$info = info;
    final l$price = price;
    return Object.hashAll([
      l$id,
      l$name,
      l$info,
      l$price,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateProduct$create) ||
        runtimeType != other.runtimeType) {
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
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct$create
    on Mutation$CreateProduct$create {
  CopyWith$Mutation$CreateProduct$create<Mutation$CreateProduct$create>
      get copyWith => CopyWith$Mutation$CreateProduct$create(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateProduct$create<TRes> {
  factory CopyWith$Mutation$CreateProduct$create(
    Mutation$CreateProduct$create instance,
    TRes Function(Mutation$CreateProduct$create) then,
  ) = _CopyWithImpl$Mutation$CreateProduct$create;

  factory CopyWith$Mutation$CreateProduct$create.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct$create;

  TRes call({
    int? id,
    String? name,
    String? info,
    double? price,
  });
}

class _CopyWithImpl$Mutation$CreateProduct$create<TRes>
    implements CopyWith$Mutation$CreateProduct$create<TRes> {
  _CopyWithImpl$Mutation$CreateProduct$create(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct$create _instance;

  final TRes Function(Mutation$CreateProduct$create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? info = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Mutation$CreateProduct$create(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        info: info == _undefined || info == null
            ? _instance.info
            : (info as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
      ));
}

class _CopyWithStubImpl$Mutation$CreateProduct$create<TRes>
    implements CopyWith$Mutation$CreateProduct$create<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$create(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? info,
    double? price,
  }) =>
      _res;
}

class Variables$Mutation$UpdateProduct {
  factory Variables$Mutation$UpdateProduct({
    required int id,
    required String name,
    String? info,
    required double price,
  }) =>
      Variables$Mutation$UpdateProduct._({
        r'id': id,
        r'name': name,
        if (info != null) r'info': info,
        r'price': price,
      });

  Variables$Mutation$UpdateProduct._(this._$data);

  factory Variables$Mutation$UpdateProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('info')) {
      final l$info = data['info'];
      result$data['info'] = (l$info as String?);
    }
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    return Variables$Mutation$UpdateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  String get name => (_$data['name'] as String);
  String? get info => (_$data['info'] as String?);
  double get price => (_$data['price'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('info')) {
      final l$info = info;
      result$data['info'] = l$info;
    }
    final l$price = price;
    result$data['price'] = l$price;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProduct<Variables$Mutation$UpdateProduct>
      get copyWith => CopyWith$Variables$Mutation$UpdateProduct(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateProduct) ||
        runtimeType != other.runtimeType) {
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
    final l$info = info;
    final lOther$info = other.info;
    if (_$data.containsKey('info') != other._$data.containsKey('info')) {
      return false;
    }
    if (l$info != lOther$info) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$info = info;
    final l$price = price;
    return Object.hashAll([
      l$id,
      l$name,
      _$data.containsKey('info') ? l$info : const {},
      l$price,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProduct(
    Variables$Mutation$UpdateProduct instance,
    TRes Function(Variables$Mutation$UpdateProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProduct;

  factory CopyWith$Variables$Mutation$UpdateProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProduct;

  TRes call({
    int? id,
    String? name,
    String? info,
    double? price,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateProduct<TRes>
    implements CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProduct _instance;

  final TRes Function(Variables$Mutation$UpdateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? info = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProduct._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (name != _undefined && name != null) 'name': (name as String),
        if (info != _undefined) 'info': (info as String?),
        if (price != _undefined && price != null) 'price': (price as double),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProduct<TRes>
    implements CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProduct(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? info,
    double? price,
  }) =>
      _res;
}

class Mutation$UpdateProduct {
  Mutation$UpdateProduct({required this.update});

  factory Mutation$UpdateProduct.fromJson(Map<String, dynamic> json) {
    final l$update = json['update'];
    return Mutation$UpdateProduct(
        update: Mutation$UpdateProduct$update.fromJson(
            (l$update as Map<String, dynamic>)));
  }

  final Mutation$UpdateProduct$update update;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update = update;
    _resultData['update'] = l$update.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update = update;
    return Object.hashAll([l$update]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProduct) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProduct on Mutation$UpdateProduct {
  CopyWith$Mutation$UpdateProduct<Mutation$UpdateProduct> get copyWith =>
      CopyWith$Mutation$UpdateProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateProduct<TRes> {
  factory CopyWith$Mutation$UpdateProduct(
    Mutation$UpdateProduct instance,
    TRes Function(Mutation$UpdateProduct) then,
  ) = _CopyWithImpl$Mutation$UpdateProduct;

  factory CopyWith$Mutation$UpdateProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProduct;

  TRes call({Mutation$UpdateProduct$update? update});
  CopyWith$Mutation$UpdateProduct$update<TRes> get update;
}

class _CopyWithImpl$Mutation$UpdateProduct<TRes>
    implements CopyWith$Mutation$UpdateProduct<TRes> {
  _CopyWithImpl$Mutation$UpdateProduct(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProduct _instance;

  final TRes Function(Mutation$UpdateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? update = _undefined}) => _then(Mutation$UpdateProduct(
      update: update == _undefined || update == null
          ? _instance.update
          : (update as Mutation$UpdateProduct$update)));
  CopyWith$Mutation$UpdateProduct$update<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Mutation$UpdateProduct$update(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProduct<TRes>
    implements CopyWith$Mutation$UpdateProduct<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProduct(this._res);

  TRes _res;

  call({Mutation$UpdateProduct$update? update}) => _res;
  CopyWith$Mutation$UpdateProduct$update<TRes> get update =>
      CopyWith$Mutation$UpdateProduct$update.stub(_res);
}

const documentNodeMutationUpdateProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'info')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'info'),
            value: VariableNode(name: NameNode(value: 'info')),
          ),
          ArgumentNode(
            name: NameNode(value: 'price'),
            value: VariableNode(name: NameNode(value: 'price')),
          ),
        ],
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
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Mutation$UpdateProduct _parserFn$Mutation$UpdateProduct(
        Map<String, dynamic> data) =>
    Mutation$UpdateProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateProduct?,
);

class Options$Mutation$UpdateProduct
    extends graphql.MutationOptions<Mutation$UpdateProduct> {
  Options$Mutation$UpdateProduct({
    String? operationName,
    required Variables$Mutation$UpdateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProduct,
          parserFn: _parserFn$Mutation$UpdateProduct,
        );

  final OnMutationCompleted$Mutation$UpdateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProduct
    extends graphql.WatchQueryOptions<Mutation$UpdateProduct> {
  WatchOptions$Mutation$UpdateProduct({
    String? operationName,
    required Variables$Mutation$UpdateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProduct? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProduct,
        );
}

extension ClientExtension$Mutation$UpdateProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProduct>> mutate$UpdateProduct(
          Options$Mutation$UpdateProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProduct> watchMutation$UpdateProduct(
          WatchOptions$Mutation$UpdateProduct options) =>
      this.watchMutation(options);
}

class Mutation$UpdateProduct$HookResult {
  Mutation$UpdateProduct$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateProduct runMutation;

  final graphql.QueryResult<Mutation$UpdateProduct> result;
}

Mutation$UpdateProduct$HookResult useMutation$UpdateProduct(
    [WidgetOptions$Mutation$UpdateProduct? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateProduct());
  return Mutation$UpdateProduct$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateProduct> useWatchMutation$UpdateProduct(
        WatchOptions$Mutation$UpdateProduct options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateProduct
    extends graphql.MutationOptions<Mutation$UpdateProduct> {
  WidgetOptions$Mutation$UpdateProduct({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProduct,
          parserFn: _parserFn$Mutation$UpdateProduct,
        );

  final OnMutationCompleted$Mutation$UpdateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateProduct
    = graphql.MultiSourceResult<Mutation$UpdateProduct> Function(
  Variables$Mutation$UpdateProduct, {
  Object? optimisticResult,
  Mutation$UpdateProduct? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateProduct = widgets.Widget Function(
  RunMutation$Mutation$UpdateProduct,
  graphql.QueryResult<Mutation$UpdateProduct>?,
);

class Mutation$UpdateProduct$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateProduct> {
  Mutation$UpdateProduct$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateProduct? options,
    required Builder$Mutation$UpdateProduct builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateProduct(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateProduct$update {
  Mutation$UpdateProduct$update({
    required this.id,
    required this.name,
    required this.info,
    required this.price,
  });

  factory Mutation$UpdateProduct$update.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$info = json['info'];
    final l$price = json['price'];
    return Mutation$UpdateProduct$update(
      id: (l$id as int),
      name: (l$name as String),
      info: (l$info as String),
      price: (l$price as num).toDouble(),
    );
  }

  final int id;

  final String name;

  final String info;

  final double price;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$info = info;
    _resultData['info'] = l$info;
    final l$price = price;
    _resultData['price'] = l$price;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$info = info;
    final l$price = price;
    return Object.hashAll([
      l$id,
      l$name,
      l$info,
      l$price,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProduct$update) ||
        runtimeType != other.runtimeType) {
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
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProduct$update
    on Mutation$UpdateProduct$update {
  CopyWith$Mutation$UpdateProduct$update<Mutation$UpdateProduct$update>
      get copyWith => CopyWith$Mutation$UpdateProduct$update(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProduct$update<TRes> {
  factory CopyWith$Mutation$UpdateProduct$update(
    Mutation$UpdateProduct$update instance,
    TRes Function(Mutation$UpdateProduct$update) then,
  ) = _CopyWithImpl$Mutation$UpdateProduct$update;

  factory CopyWith$Mutation$UpdateProduct$update.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProduct$update;

  TRes call({
    int? id,
    String? name,
    String? info,
    double? price,
  });
}

class _CopyWithImpl$Mutation$UpdateProduct$update<TRes>
    implements CopyWith$Mutation$UpdateProduct$update<TRes> {
  _CopyWithImpl$Mutation$UpdateProduct$update(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProduct$update _instance;

  final TRes Function(Mutation$UpdateProduct$update) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? info = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Mutation$UpdateProduct$update(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        info: info == _undefined || info == null
            ? _instance.info
            : (info as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateProduct$update<TRes>
    implements CopyWith$Mutation$UpdateProduct$update<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProduct$update(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? info,
    double? price,
  }) =>
      _res;
}

class Variables$Mutation$DeleteProduct {
  factory Variables$Mutation$DeleteProduct({required int id}) =>
      Variables$Mutation$DeleteProduct._({
        r'id': id,
      });

  Variables$Mutation$DeleteProduct._(this._$data);

  factory Variables$Mutation$DeleteProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Mutation$DeleteProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteProduct<Variables$Mutation$DeleteProduct>
      get copyWith => CopyWith$Variables$Mutation$DeleteProduct(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteProduct) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  factory CopyWith$Variables$Mutation$DeleteProduct(
    Variables$Mutation$DeleteProduct instance,
    TRes Function(Variables$Mutation$DeleteProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteProduct;

  factory CopyWith$Variables$Mutation$DeleteProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteProduct;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteProduct<TRes>
    implements CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteProduct _instance;

  final TRes Function(Variables$Mutation$DeleteProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteProduct._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteProduct<TRes>
    implements CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteProduct(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteProduct {
  Mutation$DeleteProduct({required this.delete});

  factory Mutation$DeleteProduct.fromJson(Map<String, dynamic> json) {
    final l$delete = json['delete'];
    return Mutation$DeleteProduct(
        delete: Mutation$DeleteProduct$delete.fromJson(
            (l$delete as Map<String, dynamic>)));
  }

  final Mutation$DeleteProduct$delete delete;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delete = delete;
    _resultData['delete'] = l$delete.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delete = delete;
    return Object.hashAll([l$delete]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteProduct) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (l$delete != lOther$delete) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteProduct on Mutation$DeleteProduct {
  CopyWith$Mutation$DeleteProduct<Mutation$DeleteProduct> get copyWith =>
      CopyWith$Mutation$DeleteProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteProduct<TRes> {
  factory CopyWith$Mutation$DeleteProduct(
    Mutation$DeleteProduct instance,
    TRes Function(Mutation$DeleteProduct) then,
  ) = _CopyWithImpl$Mutation$DeleteProduct;

  factory CopyWith$Mutation$DeleteProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProduct;

  TRes call({Mutation$DeleteProduct$delete? delete});
  CopyWith$Mutation$DeleteProduct$delete<TRes> get delete;
}

class _CopyWithImpl$Mutation$DeleteProduct<TRes>
    implements CopyWith$Mutation$DeleteProduct<TRes> {
  _CopyWithImpl$Mutation$DeleteProduct(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProduct _instance;

  final TRes Function(Mutation$DeleteProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? delete = _undefined}) => _then(Mutation$DeleteProduct(
      delete: delete == _undefined || delete == null
          ? _instance.delete
          : (delete as Mutation$DeleteProduct$delete)));
  CopyWith$Mutation$DeleteProduct$delete<TRes> get delete {
    final local$delete = _instance.delete;
    return CopyWith$Mutation$DeleteProduct$delete(
        local$delete, (e) => call(delete: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteProduct<TRes>
    implements CopyWith$Mutation$DeleteProduct<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProduct(this._res);

  TRes _res;

  call({Mutation$DeleteProduct$delete? delete}) => _res;
  CopyWith$Mutation$DeleteProduct$delete<TRes> get delete =>
      CopyWith$Mutation$DeleteProduct$delete.stub(_res);
}

const documentNodeMutationDeleteProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'delete'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Mutation$DeleteProduct _parserFn$Mutation$DeleteProduct(
        Map<String, dynamic> data) =>
    Mutation$DeleteProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteProduct?,
);

class Options$Mutation$DeleteProduct
    extends graphql.MutationOptions<Mutation$DeleteProduct> {
  Options$Mutation$DeleteProduct({
    String? operationName,
    required Variables$Mutation$DeleteProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteProduct,
          parserFn: _parserFn$Mutation$DeleteProduct,
        );

  final OnMutationCompleted$Mutation$DeleteProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteProduct
    extends graphql.WatchQueryOptions<Mutation$DeleteProduct> {
  WatchOptions$Mutation$DeleteProduct({
    String? operationName,
    required Variables$Mutation$DeleteProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteProduct? typedOptimisticResult,
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
          document: documentNodeMutationDeleteProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteProduct,
        );
}

extension ClientExtension$Mutation$DeleteProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteProduct>> mutate$DeleteProduct(
          Options$Mutation$DeleteProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteProduct> watchMutation$DeleteProduct(
          WatchOptions$Mutation$DeleteProduct options) =>
      this.watchMutation(options);
}

class Mutation$DeleteProduct$HookResult {
  Mutation$DeleteProduct$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteProduct runMutation;

  final graphql.QueryResult<Mutation$DeleteProduct> result;
}

Mutation$DeleteProduct$HookResult useMutation$DeleteProduct(
    [WidgetOptions$Mutation$DeleteProduct? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteProduct());
  return Mutation$DeleteProduct$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteProduct> useWatchMutation$DeleteProduct(
        WatchOptions$Mutation$DeleteProduct options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteProduct
    extends graphql.MutationOptions<Mutation$DeleteProduct> {
  WidgetOptions$Mutation$DeleteProduct({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteProduct,
          parserFn: _parserFn$Mutation$DeleteProduct,
        );

  final OnMutationCompleted$Mutation$DeleteProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteProduct
    = graphql.MultiSourceResult<Mutation$DeleteProduct> Function(
  Variables$Mutation$DeleteProduct, {
  Object? optimisticResult,
  Mutation$DeleteProduct? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteProduct = widgets.Widget Function(
  RunMutation$Mutation$DeleteProduct,
  graphql.QueryResult<Mutation$DeleteProduct>?,
);

class Mutation$DeleteProduct$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteProduct> {
  Mutation$DeleteProduct$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteProduct? options,
    required Builder$Mutation$DeleteProduct builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteProduct(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$DeleteProduct$delete {
  Mutation$DeleteProduct$delete({
    required this.id,
    required this.name,
    required this.info,
    required this.price,
  });

  factory Mutation$DeleteProduct$delete.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$info = json['info'];
    final l$price = json['price'];
    return Mutation$DeleteProduct$delete(
      id: (l$id as int),
      name: (l$name as String),
      info: (l$info as String),
      price: (l$price as num).toDouble(),
    );
  }

  final int id;

  final String name;

  final String info;

  final double price;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$info = info;
    _resultData['info'] = l$info;
    final l$price = price;
    _resultData['price'] = l$price;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$info = info;
    final l$price = price;
    return Object.hashAll([
      l$id,
      l$name,
      l$info,
      l$price,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteProduct$delete) ||
        runtimeType != other.runtimeType) {
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
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteProduct$delete
    on Mutation$DeleteProduct$delete {
  CopyWith$Mutation$DeleteProduct$delete<Mutation$DeleteProduct$delete>
      get copyWith => CopyWith$Mutation$DeleteProduct$delete(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteProduct$delete<TRes> {
  factory CopyWith$Mutation$DeleteProduct$delete(
    Mutation$DeleteProduct$delete instance,
    TRes Function(Mutation$DeleteProduct$delete) then,
  ) = _CopyWithImpl$Mutation$DeleteProduct$delete;

  factory CopyWith$Mutation$DeleteProduct$delete.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProduct$delete;

  TRes call({
    int? id,
    String? name,
    String? info,
    double? price,
  });
}

class _CopyWithImpl$Mutation$DeleteProduct$delete<TRes>
    implements CopyWith$Mutation$DeleteProduct$delete<TRes> {
  _CopyWithImpl$Mutation$DeleteProduct$delete(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProduct$delete _instance;

  final TRes Function(Mutation$DeleteProduct$delete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? info = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Mutation$DeleteProduct$delete(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        info: info == _undefined || info == null
            ? _instance.info
            : (info as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteProduct$delete<TRes>
    implements CopyWith$Mutation$DeleteProduct$delete<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProduct$delete(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? info,
    double? price,
  }) =>
      _res;
}
