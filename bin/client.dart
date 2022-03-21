import 'dart:io';
import 'dart:math';

import 'package:grpc/grpc.dart';

import 'package:dart_grpc_server/dart_grpc_server.dart';
import 'package:dart_grpc_server/src/generated/groceries.pbgrpc.dart';

class Client {
  ClientChannel? channel;
  GroceryServiceClient? stub;
  dynamic response;
  bool executionInProgress = true;

  Future<void> main() async {
    channel = ClientChannel(
      'localhost',
      port: 50000,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    stub = GroceryServiceClient(
      channel!,
      options: CallOptions(
        timeout: Duration(seconds: 30),
      ),
    );

    while (executionInProgress) {
      try {
        print('----- Welcome to Dart GRPC Server! -----');
        print('----- What would you like to do?   -----\n');
        print('👉 1: View all products');
        print('👉 2: Add new product');
        print('👉 3: Get product');
        print('👉 4: Update a product');
        print('👉 5: Delete a product\n');
        print('👉 6: View all categories');
        print('👉 7: Get category');
        print('👉 8: Add new category');
        print('👉 9: Update a category');
        print('👉 10: Delete a category\n');
        print('👉 11: Get all products of given category');

        var option = int.parse(stdin.readLineSync()!);
        switch (option) {
          case 1:
            response = await stub!.getAllItems(Empty());
            print('----- Store products -----');
            response.items.forEach((item) {
              print(
                  '👉: Name: ${item.name} | categoryId: ${item.categoryId} (id: ${item.id})');
            });

            break;
          case 2:
            print('Enter product name:');
            var name = stdin.readLineSync()!;
            var item = await _findItemByName(name);
            if (item.id != 0) {
              print('🔴 Product already exists!');
            } else {
              print('Enter product\'s category:');
              var categoryName = stdin.readLineSync()!;
              var category = await _findCategoryByName(categoryName);
              if (category.id == 0) {
                print('🔴 Category does not exist!');
              } else {
                var newItem = Item()
                  ..id = _randomId()
                  ..name = name
                  ..categoryId = category.id;
                response = await stub!.createItem(newItem);
                print(
                    '✅ Product created: name ${item.name} | categoryId ${item.categoryId} (id: ${item.id})');
              }
            }
            break;
          case 3:
            print('Enter product name:');
            var productName = stdin.readLineSync()!;
            var item = await _findItemByName(productName);
            if (item.id != 0) {
              print('📚 Porduct found: ${item.name} (id: ${item.id})');
            } else {
              print('🔴 Product not found');
            }
            break;
          case 4:
            break;
          case 5:
            break;
          case 6:
            response = await stub!.getAllCategories(Empty());
            print('----- Store product categories -----');
            response.categories.forEach((category) {
              print('👉: ${category.name} (id: ${category.id})');
            });
            break;
          case 7:
            print('Enter category name:');
            var name = stdin.readLineSync()!;
            var category = await _findCategoryByName(name);
            if (category.id != 0) {
              print('📚 Category found: ${category.name} (id: ${category.id})');
            } else {
              print('🔴 Category not found');
            }
            break;
          case 8:
            print('Enter category name:');
            var name = stdin.readLineSync()!;
            var category = await _findCategoryByName(name);
            if (category.id != 0) {
              print('✅ Category found: ${category.name} (id: ${category.id})');
            } else {
              category = Category()
                ..id = Random(999).nextInt(9999)
                ..name = name;
              response = await stub!.createCategory(category);
              print(
                  '✅ category created: name ${category.name} (id: ${category.id})');
            }
            break;
          case 9:
            print('Enter category name:');
            var name = stdin.readLineSync()!;
            var category = await _findCategoryByName(name);
            if (category.id != 0) {
              print('📚 Category found: ${category.name} (id: ${category.id})');
              print('Enter new category name:');
              var newName = stdin.readLineSync()!;
              category.name = newName;
              response = await stub!.updateCategory(category);
              print(
                  '✅ Category updated: ${category.name} (id: ${category.id})');
            } else {
              print('🔴 Category not found');
            }
            break;
          case 10:
            print('Enter category name:');
            var name = stdin.readLineSync()!;
            var category = await _findCategoryByName(name);
            if (category.id != 0) {
              print('📚 Category found: ${category.name} (id: ${category.id})');
              response = await stub!.deleteCategory(category);
              print(
                  '✅ Category deleted: ${category.name} (id: ${category.id})');
            } else {
              print('🔴 Category not found');
            }
            break;
          case 11:
            print('Enter category name:');
            var name = stdin.readLineSync()!;
            var category = await _findCategoryByName(name);
            if (category.id != 0) {
              response = await stub!.getItemsByCategory(category);
              print('----- All products of the $name category -----');
              response.items.forEach((item) {
                print(
                    '👉: Name: ${item.name} | categoryId: ${item.categoryId} (id: ${item.id})');
              });
            } else {
              print('🔴 Category not found');
            }
            break;
          default:
            print('Invalid option 😢');
        }
      } catch (e) {
        print('Error: $e');
      }

      print("Do you wish to exit the store? (y/n)");
      var result = stdin.readLineSync() ?? 'y';
      executionInProgress = result.toLowerCase() != 'y';
    }

    await channel!.shutdown();
  }

  Future<Category> _findCategoryByName(String name) async {
    var category = Category()..name = name;

    category = await stub!.getCategory(category);

    return category;
  }

  Future<Item> _findItemByName(String name) async {
    var item = Item()..name = name;

    item = await stub!.getItem(item);

    return item;
  }

  int _randomId() => Random(1000).nextInt(9999);
}

void main() {
  var client = Client();
  client.main();
}
