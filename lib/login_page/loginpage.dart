import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:the_validator/the_validator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:models/main_page/homepage.dart';

class LoginUser extends StatefulWidget {
  @override
  _LoginUserState createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  var formKeyHatirla = GlobalKey<FormState>();
  var formKey = GlobalKey<FormState>();
  var formKeyPhone = GlobalKey<FormState>();
  var formKeySmsCode = GlobalKey<FormState>();

  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn();
  String _email;
  String _sifre;
  String _email2;
  String _hataMesaji;
  bool _isLoading = false;
  String _phone;
  String _smsCode;

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: _isLoading,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(title: Text("SIGN IN")),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onSaved: (x) {
                          setState(() {
                            _email = x;
                          });
                        },
                        autofocus: true,
                        validator: (x) {
                          if (x.isEmpty) {
                            return "Fill in!";
                          } else {
                            if (EmailValidator.validate(x) != true) {
                              return "Please input valid mail address!";
                            } else {
                              return null;
                            }
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            errorStyle: TextStyle(fontSize: 18),
                            labelText: "EMAIL",
                            labelStyle: TextStyle(fontSize: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.purple))),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onSaved: (x) {
                          setState(() {
                            _sifre = x;
                          });
                        },
                        obscureText: true,
                        validator: FieldValidator.password(
                            minLength: 8,
                            shouldContainNumber: true,
                            shouldContainCapitalLetter: true,
                            shouldContainSpecialChars: true,
                         ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            errorStyle: TextStyle(fontSize: 18),
                            labelText: "PASSWORD",
                            labelStyle: TextStyle(fontSize: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.purple))),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton.icon(
                              onPressed: _sifreHatirlat,
                              icon: Icon(Icons.help_outline),
                              label: Text(
                                "I forgot my password?",
                                style: TextStyle(fontSize: 16),
                              )),
                          RaisedButton.icon(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            onPressed:(){  Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()));

                            },
                            color: Colors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            hoverColor: Colors.black,
                            label: Text(
                              "LOGIN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.purple)),
                        child: ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, "/createUser");
                          },
                          leading: Icon(
                            Icons.email,
                            color: Colors.red,
                          ),
                          title: Text(
                            "SIGN UP WITH E-MAIL",
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                          trailing: Icon(Icons.arrow_right,
                              size: 32, color: Colors.red),
                        ),
                      ),
                    
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  

  void _sifreHatirlat() {
    Alert(
        context: context,
        title: "ŞİFRE HATIRLATMA",
        desc: _hataMesaji,
        content: Form(
          key: formKeyHatirla,
          child: Column(
            children: <Widget>[
              TextFormField(
                onSaved: (x) {
                  setState(() {
                    _email2 = x;
                  });
                },
                autofocus: true,
                validator: (x) {
                  if (x.isEmpty) {
                    return "Doldurulması Zorunludur!";
                  } else {
                    if (EmailValidator.validate(x) != true) {
                      return "Geçerli Bir Email Adresi Giriniz!";
                    } else {
                      return null;
                    }
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    errorStyle: TextStyle(fontSize: 18),
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 1, color: Colors.purple))),
              ),
              SizedBox(height: 10),
              Text(_hataMesaji != null ? _hataMesaji.toString() : "",
                  style: TextStyle(color: Colors.red))
            ],
          ),
        ),
        buttons: [
          DialogButton(
            onPressed: _sifreGonder,
            child: Text(
              "GÖNDER",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  _sifreGonder() async {
    setState(() {
      _isLoading = true;
    });
    if (formKeyHatirla.currentState.validate()) {
      formKeyHatirla.currentState.save();
    }
    await _auth.sendPasswordResetEmail(email: _email2).then((value) {
      Navigator.pop(context);
      Alert(
          type: AlertType.success,
          context: context,
          title: "ŞİFRE GÖNDERİLDİ!",
          desc: "Lütfen Email Adresinizi Kontrol Ediniz!!",
          buttons: [
            DialogButton(
              child: Text(
                "KAPAT",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              onPressed: () => Navigator.pop(context),
            )
          ]).show();
      setState(() {
        _isLoading = false;
      });
    }).catchError((onError) {
      setState(() {
        Navigator.pop(context);
        Alert(
            type: AlertType.warning,
            context: context,
            title: "HATA!",
            desc: "Lütfen Kayıtlı Bir Email Adresi Giriniz!",
            buttons: [
              DialogButton(
                child: Text(
                  "KAPAT",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                onPressed: () => Navigator.pop(context),
              )
            ]).show();
        setState(() {
          _isLoading = false;
        });
      });
    });
  }

  
}