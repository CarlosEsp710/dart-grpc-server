import 'dart:io';

import 'package:grpc/grpc.dart';

import 'package:dart_grpc_server/dart_grpc_server.dart';

class GroceryService extends GroceryServiceBase {
  @override
  Future<Category> createCategory(ServiceCall call, Category request) async =>
      categoryService.createCategory(request)!;

  @override
  Future<Item> createItem(ServiceCall call, Item request) async =>
      itemService.createItem(request)!;

  @override
  Future<Empty> deleteCategory(ServiceCall call, Category request) async =>
      categoryService.deleteCategory(request.id)!;

  @override
  Future<Empty> deleteItem(ServiceCall call, Item request) async =>
      itemService.deleteItem(request.id)!;

  @override
  Future<Categories> getAllCategories(ServiceCall call, Empty request) async =>
      Categories()..categories.addAll(categoryService.getCategories()!);

  @override
  Future<Items> getAllItems(ServiceCall call, Empty request) async =>
      Items()..items.addAll(itemService.getItems()!);

  @override
  Future<Category> getCategory(ServiceCall call, Category request) async =>
      categoryService.getCategoryByName(request.name)!;

  @override
  Future<Item> getItem(ServiceCall call, Item request) async =>
      itemService.getItemByName(request.name)!;

  @override
  Future<AllItemsOfCategory> getItemsByCategory(
          ServiceCall call, Category request) async =>
      AllItemsOfCategory(
        items: itemService.getItemsByCategory(request.id),
        categoryId: request.id,
      );

  @override
  Future<Category> updateCategory(ServiceCall call, Category request) async =>
      categoryService.updateCategory(request)!;

  @override
  Future<Item> updateItem(ServiceCall call, Item request) async =>
      itemService.updateItem(request)!;
}

Future<void> main() async {
  final server = Server(
    [
      GroceryService(),
    ],
    const <Interceptor>[],
    CodecRegistry(
      codecs: const [
        GzipCodec(),
        IdentityCodec(),
      ],
    ),
  );

  // :fire

  await server.serve(port: 50000);
  print('✅ Server listening on port ${server.port}...');
}
