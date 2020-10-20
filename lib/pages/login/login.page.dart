import 'package:firebase1/service/authentication.service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 55, right: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/logo/logo.png',
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: 10,
              ),
              Text('Bem vindo de volta!',
                  style: TextStyle(color: Colors.black, fontSize: 30)),
              SizedBox(
                height: 10,
              ),
              Text('Faça login para continuar',
                  style: TextStyle(color: Colors.grey, fontSize: 26)),
              SizedBox(
                height: 10,
              ),
              Text('no Animaflix',
                  style: TextStyle(color: Colors.grey, fontSize: 26)),
              SizedBox(
                height: 120,
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  cursorColor: Colors.red,
                  hintColor: Colors.transparent,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Digite seu email',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                    )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white10,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  cursorColor: Colors.red,
                  hintColor: Colors.transparent,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                    )),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Digite sua senha',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white10,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    color: Colors.transparent,
                    elevation: 0,
                    highlightElevation: 0,
                    onPressed: () {},
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: Colors.blue, fontSize: 26),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.transparent,
                    elevation: 0,
                    highlightElevation: 0,
                    onPressed: () {
                      context.read<AuthenticationService>().signInAnonymously();
                    },
                    child: Text(
                      'Anônimo',
                      style: TextStyle(color: Colors.blue, fontSize: 26),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      'Ainda não tem uma conta?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    RaisedButton(
                      color: Colors.transparent,
                      elevation: 0,
                      highlightElevation: 0,
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'Clique aqui!',
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
