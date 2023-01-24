import 'api.dart';

import '../models/connection.dart';

class ConnectionsApi extends Api {
  ConnectionsApi();

  /// List all connections
  Future<List<Connection>> getConnections(String userId) async {
    try {
      final res = await client.get('/users/$userId/connections');
      final map = res.data as Map<String, dynamic>;
      final list = map['data'] as List<Map<String, dynamic>>;
      return list.map((e) {
        return Connection(
          id: e['id'],
          createdDate: e['createdDate'],
          lastUsed: e['lastUsed'],
          institutionId: e['institution']['id'],
          status: e['status'],
        );
      }).toList();
    } on DioError catch (e) {
      throw BasiqException.fromDioError(e);
    }
  }
}
