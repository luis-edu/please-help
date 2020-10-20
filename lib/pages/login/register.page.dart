import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
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
              Text('Seja bem vindo',
                  style: TextStyle(color: Colors.black, fontSize: 26)),
              SizedBox(
                height: 10,
              ),
              Text('Crie uma conta para continuar',
                  style: TextStyle(color: Colors.grey, fontSize: 22)),
              SizedBox(
                height: 10,
              ),
              Text('no Animaflix',
                  style: TextStyle(color: Colors.grey, fontSize: 22)),
              SizedBox(
                height: 40,
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
                    labelText: 'Confirme sua senha',
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
              RaisedButton(
                color: Colors.transparent,
                elevation: 0,
                highlightElevation: 0,
                onPressed: () {},
                child: Text(
                  'Cadastrar',
                  style: TextStyle(color: Colors.blue, fontSize: 26),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      'Já possui uma conta?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    RaisedButton(
                      color: Colors.transparent,
                      elevation: 0,
                      highlightElevation: 0,
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
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
