enum Scope {
  clientAccess,
  serverAccess;

  String get name {
    switch (this) {
      case Scope.clientAccess:
        return 'CLIENT_ACCESS';

      case Scope.serverAccess:
        return 'SERVER_ACCESS';
    }
  }
}
