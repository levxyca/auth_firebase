import 'package:flutter/material.dart';

import '../components/default_text_field.dart';

abstract class LoginViewModelProtocol extends ChangeNotifier {
  bool get isLoading;
  bool get isEnableSubmit;
  void updateEmail(String email);
  void updatePassword(String password);
  void didTapLogin();
  void didTapGoToRegister();
}

class LoginView extends StatelessWidget {
  final LoginViewModelProtocol viewModel;
  const LoginView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 15, 19, 0.81),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 48),
                const Icon(
                  Icons.logo_dev,
                  size: 100,
                  color: Colors.white,
                ),
                const SizedBox(height: 16),
                DefaultTextField(
                  hint: 'Email',
                  autoCorrect: false,
                  onChanged: viewModel.updateEmail,
                ),
                const SizedBox(height: 32),
                DefaultTextField(
                  hint: 'Senha',
                  isPassword: true,
                  autoCorrect: false,
                  onChanged: viewModel.updatePassword,
                ),
                const SizedBox(height: 32),
                AnimatedBuilder(
                  animation: viewModel,
                  builder: (context, _) {
                    return ElevatedButton(
                      onPressed: _submit,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: SizedBox(height: 56, child: Center(child: _submitWidget)),
                    );
                  },
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: viewModel.didTapGoToRegister,
                  child: const Text(
                    'Registrar-se',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get _submitWidget {
    return viewModel.isLoading ? const CircularProgressIndicator() : const Text('Entrar');
  }

  void Function()? get _submit {
    return viewModel.isEnableSubmit ? viewModel.didTapLogin : null;
  }
}
