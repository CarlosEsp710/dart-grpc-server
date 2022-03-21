// Category interface
import 'package:dart_grpc_server/dart_grpc_server.dart';

abstract class InterfaceCategoryService {
  factory InterfaceCategoryService() => CategoryService();

  List<Category>? getCategories() => null;
  Category? getCategoryByName(String name) => null;
  Category? getCategoryById(int id) => null;
  Category? createCategory(Category category) => null;
  Category? updateCategory(Category category) => null;
  Empty? deleteCategory(int id) => null;
}

final categoryService = InterfaceCategoryService();
