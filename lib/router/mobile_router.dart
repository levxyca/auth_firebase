import 'package:flutter/material.dart';

import '../features/authentication/di/auth_factory.dart';

class MobileRouter {
  static const String initialRoute = AuthFactory.loginRoute;

  static final Map<String, WidgetBuilder> routes = {
    /// Authentication
    AuthFactory.loginRoute: (_) => AuthFactory.login(),
  };
}
