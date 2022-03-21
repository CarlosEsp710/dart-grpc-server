import 'package:dart_grpc_server/src/generated/groceries.pbgrpc.dart';

class HelperMethods {
  Category getCategoryFromMap(Map<String, dynamic> category) {
    var _idTag = 1;
    var _nameTag = 2;

    int _id = category['id'];
    String _name = category['name'];

    return Category.fromJson('{"$_idTag": $_id, "$_nameTag": "$_name"}');
  }

  Item getItemFromMap(Map<String, dynamic> item) {
    var _idTag = 1;
    var _nameTag = 2;
    var _categoryTag = 3;

    int _id = item['id'];
    String _name = item['name'];
    int _category = item['category'];

    return Item.fromJson(
        '{"$_idTag": $_id, "$_nameTag": "$_name", "$_categoryTag": $_category}');
  }
}

final helper = HelperMethods();
