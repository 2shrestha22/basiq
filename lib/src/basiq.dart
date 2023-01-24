import '../basiq.dart';
import 'api/accounts_api.dart';
import 'api/authentication.dart';
import 'api/connections.dart';
import 'api/institutions.dart';
import 'api/storage.dart';
import 'api/user_api.dart';
import 'models/connection.dart';

const basiqVersion = '3.0';

class Basiq {
  Basiq._();
  static final Basiq instance = Basiq._();

  late String apiKey;

  String _userId = '';

  /// Set userId before performing any query.
  void setUerId(String userId) {
    _userId = userId;
  }

  /// Storage
  late InMemoryBasiqStorage _storage;
  InMemoryBasiqStorage get storage => _storage;

  /// Auth
  late Authentication _auth;

  /// APIs
  late ConnectionsApi _connectionsApi;
  late InstitutionsApi _institutionsApi;
  late AccountsApi _accountsApi;
  late UserApi _userApi;

  /// Initialize basiq with apiKey.
  ///
  /// You need to authenticated afterward to use basiq.
  void init({required String apiKey}) {
    this.apiKey = apiKey;

    _storage = InMemoryBasiqStorage();
    _auth = Authentication(_storage);
    _connectionsApi = ConnectionsApi();
    _institutionsApi = InstitutionsApi();
    _accountsApi = AccountsApi();
    _userApi = UserApi();
  }

  /// Returns token if userId matches the saved userId and token is not expired.
  ///
  /// If token is expired reauthenticates and gets new token.
  ///
  /// If no token is saved authenticates with userId;
  ///
  /// Don't forget to set user id before authenticating.
  Future<Token> authenticate() async {
    final savedToken = await Basiq.instance.storage.getToken();
    if (savedToken != null &&
        savedToken.userId == _userId &&
        !savedToken.expired) {
      return savedToken;
    } else {
      return _auth.authenticate(userId: _userId);
    }
  }

  /// Clear all data related to basiq saved in device.
  Future<void> clear() {
    _userId = '';
    return _storage.deleteAll();
  }

  /// List all connections
  Future<List<Connection>> getConnections() =>
      _connectionsApi.getConnections(_userId);

  /// List all institutions
  Future<List<Institution>> getInstitutions() =>
      _institutionsApi.getInstitutions();

  /// List all accounts belonging to a user
  Future<List<Account>> getAccounts() => _accountsApi.getAccounts(_userId);

  /// Get user details
  Future<User> getUserDetails() => _userApi.getUserDetails(_userId);
}
