// Category implementation

import 'package:dart_grpc_server/src/db/categories/categories_int.dart';
import 'package:dart_grpc_server/src/generated/groceries.pb.dart';

class CategoryService implements InterfaceCategoryService {
  @override
  Category? createCategory(Category category) {
    // TODO: implement createCategory
    throw UnimplementedError();
  }

  @override
  Empty? deleteCategory(int id) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  List<Category>? getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Category? getCategoryById(int id) {
    // TODO: implement getCategoryById
    throw UnimplementedError();
  }

  @override
  Category? getCategoryByName(String name) {
    // TODO: implement getCategoryByName
    throw UnimplementedError();
  }

  @override
  Category? updateCategory(Category category) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }
}
