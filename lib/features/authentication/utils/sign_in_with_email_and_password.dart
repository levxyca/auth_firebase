import 'package:firebase_auth/firebase_auth.dart';

void signInWithEmailAndPassword(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    User? user = userCredential.user;
    print("Usuário autenticado: ${user!.uid}");
  } catch (e) {
    print("Erro ao autenticar: $e");
  }
}
