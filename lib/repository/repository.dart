import 'package:task_for_ailoitte/serialization/userModel.dart';

import 'api-provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<UserModel> fetchDrinkList() {
    return _provider.fetchDrinkList();
  }
}

class NetworkError extends Error {}
