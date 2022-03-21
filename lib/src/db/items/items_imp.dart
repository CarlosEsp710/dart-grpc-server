// Item implementation

import 'package:dart_grpc_server/dart_grpc_server.dart';

class ItemService implements InterfaceItemService {
  @override
  Item? createItem(Item item) {
    items.add({
      'id': item.id,
      'name': item.name,
      'categoryId': item.categoryId,
    });
    return item;
  }

  @override
  Empty? deleteItem(int id) {
    items.removeWhere((element) => element['id'] == id);
    return Empty();
  }

  @override
  Item? getItemById(int id) {
    var item = Item();
    var result = items.where((item) => item['id'] == id).toList();

    if (result.isNotEmpty) {
      item = helper.getItemFromMap(result.first);
    }

    return item;
  }

  @override
  Item? getItemByName(String name) {
    var item = Item();
    var result = items.where((element) => element['name'] == name).toList();
    if (result.isNotEmpty) {
      item = helper.getItemFromMap(result.first);
    }
    return item;
  }

  @override
  List<Item>? getItems() {
    return items.map((item) => helper.getItemFromMap(item)).toList();
  }

  @override
  List<Item>? getItemsByCategory(int categoryId) {
    var result = <Item>[];
    var jsonList =
        items.where((element) => element['categoryId'] == categoryId).toList();
    result = jsonList.map((item) => helper.getItemFromMap(item)).toList();
    return result;
  }

  @override
  Item? updateItem(Item item) {
    try {
      var itemIndex = items.indexWhere((element) => element['id'] == item.id);
      categories[itemIndex]['name'] = item.name;
    } catch (e) {
      print('🔴 ERROR:: $e');
    }
    return item;
  }
}
