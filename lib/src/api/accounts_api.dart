import '../../basiq.dart';
import 'api.dart';

class AccountsApi extends Api {
  // List all accounts belonging to a user
  Future<List<Account>> getAccounts(String userId) async {
    try {
      final res = await client.get('/users/$userId/accounts');
      final map = res.data as Map<String, dynamic>;
      final list = map['data'] as List;
      return list.map((e) => Account.fromJson(e)).toList();
    } on DioError catch (e) {
      throw BasiqException.fromDioError(e);
    }
  }
}
