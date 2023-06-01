import 'package:get/get.dart';
import 'package:infinite_pagination_getx/models/user.dart';

class UserRepository extends GetConnect {
  final String _baseUrl = 'https://60fec25a2574110017078789.mockapi.io/api/v1/';

  Future<List<User>> fetchUsers(int page, int limit) async {
    final response = await get("${_baseUrl}users?page=$page&limit=$limit");

    final data = response.body;
    return List<User>.from(data.map((e) => User.fromJson(e)));
  }
}
