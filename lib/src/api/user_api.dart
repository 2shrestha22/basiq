import 'api.dart';
import '../models/user.dart';

class UserApi extends Api {
  // List all accounts belonging to a user
  Future<User> getUserDetails(String userId) async {
    try {
      final res = await client.get('/users/$userId');
      final map = res.data as Map<String, dynamic>;
      return User.fromJson(map);
    } on DioError catch (e) {
      throw BasiqException.fromDioError(e);
    }
  }
}
