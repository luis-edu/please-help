import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationService {
  final FirebaseAuth firebaseAuth;

  AuthenticationService(this.firebaseAuth);

  Stream<User> get authStateChanges => firebaseAuth.authStateChanges();

  Future<String> signInWithEmail({String email, String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return 'Login com sucesso!';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signUpWithEmail({String email, String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'Cadastro feito com sucesso!';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signInAnonymously() async {
    try {
      await firebaseAuth.signInAnonymously();
      return 'Login Anonimo com sucesso!';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signOut() async {
    try {
      await firebaseAuth.signOut();
      return 'Seu login foi revogado com sucesso!';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
