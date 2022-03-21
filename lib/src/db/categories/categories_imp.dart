// Category implementation

import 'package:dart_grpc_server/dart_grpc_server.dart';

class CategoryService implements InterfaceCategoryService {
  @override
  Category? createCategory(Category category) {
    categories.add({'id': category.id, 'name': category.name});

    return category;
  }

  @override
  Empty? deleteCategory(int id) {
    categories.removeWhere((category) => category['id'] == id);

    return Empty();
  }

  @override
  List<Category>? getCategories() => categories
      .map((category) => helper.getCategoryFromMap(category))
      .toList();

  @override
  Category? getCategoryById(int id) {
    var category = Category();
    var result = categories.where((category) => category['id'] == id).toList();

    if (result.isNotEmpty) {
      category = helper.getCategoryFromMap(result.first);
    }

    return category;
  }

  @override
  Category? getCategoryByName(String name) {
    var category = Category();
    var result =
        categories.where((category) => category['name'] == name).toList();

    if (result.isNotEmpty) {
      category = helper.getCategoryFromMap(result.first);
    }

    return category;
  }

  @override
  Category? updateCategory(Category category) {
    try {
      var categoryIndex =
          categories.indexWhere((element) => element['id'] == category.id);

      categories[categoryIndex]['name'] = category.name;
    } catch (e) {
      print('🔴 Error:: $e');
    }

    return category;
  }
}
