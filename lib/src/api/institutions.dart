import 'api.dart';
import '../models/institution.dart';

class InstitutionsApi extends Api {
  /// Retrieve a list of institutions.
  Future<List<Institution>> getInstitutions() async {
    try {
      final res = await client.get('/institutions');
      final map = res.data as Map<String, dynamic>;
      final list = map['data'] as List;
      return list.map((e) => Institution.fromJson(e)).toList();
    } on DioError catch (e) {
      throw BasiqException.fromDioError(e);
    }
  }
}
