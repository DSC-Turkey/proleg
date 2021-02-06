import 'dart:ui';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Photo(),
                    FormField()
                  ],
                ),
              ),
            ),
          )
       )
    );
  }
}

class Photo extends StatelessWidget {
  const Photo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child : Image(image: AssetImage('assets/background.png'),width: 300,height: 360,)
    );
  }
}

class FormField extends StatefulWidget {
  FormField({Key key}) : super(key: key);

  @override
  _FormFieldState createState() => _FormFieldState();
}

class _FormFieldState extends State<FormField> {
  bool passwordVisibility = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: 50,
              child: TextFormField(
                controller: _passwordController,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                ),
                validator: (String mail){
                  if(mail.isEmpty){
                    return "Lütfen bir mail yazınız";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: 50,
              child: TextFormField(
                controller: _emailController,
                autofocus: false,
                obscureText: passwordVisibility,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: Icon(
                      passwordVisibility ? Icons.visibility : Icons.visibility_off,
                      semanticLabel:
                          passwordVisibility ? 'show password' : 'hide password',
                    ),
                  ),
                ),
                validator: (String mail){
                  if(mail.isEmpty){
                    return "Lütfen bir mail yazınız";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      )
    );
  }
}
