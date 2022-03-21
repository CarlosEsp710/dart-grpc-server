// Item interface

import 'package:dart_grpc_server/dart_grpc_server.dart';

abstract class InterfaceItemService {
  factory InterfaceItemService() => ItemService();

  List<Item>? getItems() => null;
  List<Item>? getItemsByCategory(int categoryId) => null;
  Item? getItemByName(String name) => null;
  Item? getItemById(int id) => null;
  Item? createItem(Item item) => null;
  Item? updateItem(Item item) => null;
  Empty? deleteItem(int id) => null;
}

final itemService = InterfaceItemService();
