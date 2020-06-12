import 'package:apicallslikeboss/networking/ApiProvider.dart';
import 'dart:async';
import 'package:apicallslikeboss/models/chuck_categories.dart';

class ChuckCategoryRepository {
  ApiProvider _provider = ApiProvider();

  Future<chuckCategories> fetchChuckCategoryData() async {
    final response = await _provider.get("jokes/categories");
    return chuckCategories.fromJson(response);
  }
}
