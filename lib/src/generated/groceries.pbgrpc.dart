///
//  Generated code. Do not modify.
//  source: groceries.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'groceries.pb.dart' as $0;
export 'groceries.pb.dart';

class GroceryServiceClient extends $grpc.Client {
  static final _$createItem = $grpc.ClientMethod<$0.Item, $0.Item>(
      '/GroceryService/createItem',
      ($0.Item value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Item.fromBuffer(value));
  static final _$createCategory = $grpc.ClientMethod<$0.Category, $0.Category>(
      '/GroceryService/createCategory',
      ($0.Category value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$getAllItems = $grpc.ClientMethod<$0.Empty, $0.Items>(
      '/GroceryService/getAllItems',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Items.fromBuffer(value));
  static final _$getAllCategories = $grpc.ClientMethod<$0.Empty, $0.Categories>(
      '/GroceryService/getAllCategories',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Categories.fromBuffer(value));
  static final _$getItem = $grpc.ClientMethod<$0.Item, $0.Item>(
      '/GroceryService/getItem',
      ($0.Item value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Item.fromBuffer(value));
  static final _$getCategory = $grpc.ClientMethod<$0.Category, $0.Category>(
      '/GroceryService/getCategory',
      ($0.Category value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$updateItem = $grpc.ClientMethod<$0.Item, $0.Item>(
      '/GroceryService/updateItem',
      ($0.Item value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Item.fromBuffer(value));
  static final _$updateCategory = $grpc.ClientMethod<$0.Category, $0.Category>(
      '/GroceryService/updateCategory',
      ($0.Category value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$deleteItem = $grpc.ClientMethod<$0.Item, $0.Empty>(
      '/GroceryService/deleteItem',
      ($0.Item value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$deleteCategory = $grpc.ClientMethod<$0.Category, $0.Empty>(
      '/GroceryService/deleteCategory',
      ($0.Category value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getItemsByCategory =
      $grpc.ClientMethod<$0.Category, $0.AllItemsOfCategory>(
          '/GroceryService/getItemsByCategory',
          ($0.Category value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AllItemsOfCategory.fromBuffer(value));

  GroceryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Item> createItem($0.Item request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.Category> createCategory($0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.Items> getAllItems($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllItems, request, options: options);
  }

  $grpc.ResponseFuture<$0.Categories> getAllCategories($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllCategories, request, options: options);
  }

  $grpc.ResponseFuture<$0.Item> getItem($0.Item request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.Category> getCategory($0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.Item> updateItem($0.Item request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.Category> updateCategory($0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteItem($0.Item request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteCategory($0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.AllItemsOfCategory> getItemsByCategory(
      $0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItemsByCategory, request, options: options);
  }
}

abstract class GroceryServiceBase extends $grpc.Service {
  $core.String get $name => 'GroceryService';

  GroceryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Item, $0.Item>(
        'createItem',
        createItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Item.fromBuffer(value),
        ($0.Item value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Category, $0.Category>(
        'createCategory',
        createCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Items>(
        'getAllItems',
        getAllItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Items value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Categories>(
        'getAllCategories',
        getAllCategories_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Categories value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Item, $0.Item>(
        'getItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Item.fromBuffer(value),
        ($0.Item value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Category, $0.Category>(
        'getCategory',
        getCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Item, $0.Item>(
        'updateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Item.fromBuffer(value),
        ($0.Item value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Category, $0.Category>(
        'updateCategory',
        updateCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Item, $0.Empty>(
        'deleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Item.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Category, $0.Empty>(
        'deleteCategory',
        deleteCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Category, $0.AllItemsOfCategory>(
        'getItemsByCategory',
        getItemsByCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($0.AllItemsOfCategory value) => value.writeToBuffer()));
  }

  $async.Future<$0.Item> createItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Item> request) async {
    return createItem(call, await request);
  }

  $async.Future<$0.Category> createCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return createCategory(call, await request);
  }

  $async.Future<$0.Items> getAllItems_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllItems(call, await request);
  }

  $async.Future<$0.Categories> getAllCategories_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllCategories(call, await request);
  }

  $async.Future<$0.Item> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Item> request) async {
    return getItem(call, await request);
  }

  $async.Future<$0.Category> getCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return getCategory(call, await request);
  }

  $async.Future<$0.Item> updateItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Item> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$0.Category> updateCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return updateCategory(call, await request);
  }

  $async.Future<$0.Empty> deleteItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Item> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$0.Empty> deleteCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return deleteCategory(call, await request);
  }

  $async.Future<$0.AllItemsOfCategory> getItemsByCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return getItemsByCategory(call, await request);
  }

  $async.Future<$0.Item> createItem($grpc.ServiceCall call, $0.Item request);
  $async.Future<$0.Category> createCategory(
      $grpc.ServiceCall call, $0.Category request);
  $async.Future<$0.Items> getAllItems($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Categories> getAllCategories(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Item> getItem($grpc.ServiceCall call, $0.Item request);
  $async.Future<$0.Category> getCategory(
      $grpc.ServiceCall call, $0.Category request);
  $async.Future<$0.Item> updateItem($grpc.ServiceCall call, $0.Item request);
  $async.Future<$0.Category> updateCategory(
      $grpc.ServiceCall call, $0.Category request);
  $async.Future<$0.Empty> deleteItem($grpc.ServiceCall call, $0.Item request);
  $async.Future<$0.Empty> deleteCategory(
      $grpc.ServiceCall call, $0.Category request);
  $async.Future<$0.AllItemsOfCategory> getItemsByCategory(
      $grpc.ServiceCall call, $0.Category request);
}
