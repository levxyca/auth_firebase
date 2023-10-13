import 'package:flutter/material.dart';

import '../login/login_view_controller.dart';
import '../login/login_view_model.dart';



class AuthFactory {
  static const String loginRoute = '/auth/login';

  static StatefulWidget login() {


    final viewModel = LoginViewModel();
    return LoginViewController(viewModel: viewModel);
  }
}
