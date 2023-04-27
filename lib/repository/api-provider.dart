import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';
import 'package:task_for_ailoitte/serialization/userModel.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url =
      'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=rum';

  Future<UserModel> fetchDrinkList() async {
    try {
      Response response = await _dio.get(_url);
      return UserModel.fromJson(response.data);
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print("Exception occured: $error stackTrace: $stacktrace");
      }
      return UserModel.withError("Data not found / Connection issue");
    }
  }
}
