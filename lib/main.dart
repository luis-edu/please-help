import 'package:firebase1/pages/login/login.page.dart';
import 'package:firebase1/pages/login/register.page.dart';
import 'package:firebase1/service/authentication.service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiProvider(
            providers: [
              Provider<AuthenticationService>(
                  create: (_) => AuthenticationService(FirebaseAuth.instance)),
              StreamProvider(
                create: (context) =>
                    context.read<AuthenticationService>().authStateChanges,
              )
            ],
            child: AuthenticationWrapper(),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.orange,
            ),
          ),
        );
      },
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null) {
      return Center(
        child: Column(
          children: [
            Text('Você está logado'),
            Text('Seu id é ${firebaseUser.uid}'),
            FlatButton(
                onPressed: () {
                  context.read<AuthenticationService>().signOut();
                },
                child: Text('Sair'))
          ],
        ),
      );
    }
    return MaterialApp(
        initialRoute: '/signin',
        routes: {
          '/signin': (context) => LoginPage(),
          '/signup': (context) => RegisterPage(),
        },
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Scaffold());
  }
}
