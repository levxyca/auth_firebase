import '../utils/sign_in_with_email_and_password.dart';
import 'login_view_controller.dart';

class LoginViewModel extends LoginProtocol {
  /// Private properties
  String? _email;
  String? _password;
  bool _isLoading = false;

  /// LoginProtocol
  @override
  bool get isLoading => _isLoading;

  @override
  bool get isEnableSubmit => _isFormValid && !_isLoading;

  @override
  void updateEmail(String email) {
    _email = email;
    notifyListeners();
  }

  @override
  void updatePassword(String password) {
    _password = password;
    notifyListeners();
  }

  @override
  void didTapGoToRegister() {
    onGoToRegister?.call();
  }

  @override
  void didTapLogin() {
    _setLoading(true);

    final email = _email ?? '';
    final password = _password ?? '';

    signInWithEmailAndPassword(email, password);
  }

  /// Validations
  bool get _isFormValid {
    return (_email ?? '').isNotEmpty && (_password ?? '').isNotEmpty;
  }

  /// Loading
  void _setLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
