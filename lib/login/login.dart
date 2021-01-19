import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_qoin/home/home.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // _logout();
        return Future.value(false);
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.white,
        body: Theme(
          data: ThemeData(
            accentColor: Colors.white,
            highlightColor: Colors.transparent,
          ),
          child: Container(
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 2,
                              child: Image.asset('assets/images/Group5.png'),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 32, right: 16),
                              width: MediaQuery.of(context).size.width / 2,
                              // height: MediaQuery.of(context).size.height / 2,
                              alignment: Alignment.topLeft,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            child: Text(
                                          '06:20 PM',
                                          style: TextStyle(fontSize: 25),
                                        )),
                                        Container(
                                            // color: Colors.red,
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(
                                                'assets/images/Vector.png'),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('34° C'),
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Nov.10.2020 | Wednesday',
                                        style: TextStyle(color: Colors.grey),
                                      )),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: MediaQuery.of(context).size.height *
                                            0.7 -
                                        260,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            'assets/images/Group 15.png'),
                                        Text(
                                          'Qoin',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Open An Account For Digital E-Wallet Solutions.Instant Payouts.',
                                          style: TextStyle(
                                            // fontSize: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          'Join For Free',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        LoginForm(),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool _biometricEnabled = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  String username;

  bool showPass = true;
  bool isLoading = false;

  bool _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      return true;
    } else {
      setState(() {
        _autoValidate = true;
      });
      return false;
    }
  }

  @override
  void initState() {
    setState(() {});
    // _exampleLogin();
    super.initState();
  }

  _exampleLogin() {
    setState(() {
      _usernameController.text = "reynaldo";
      _passwordController.text = "password1";
    });
  }

  _onLoginButtonPressed() async {
    if (_validateInputs()) {
      username = _usernameController.text;
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => new HomePage(
                    usernameAcc: username,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    _showPassword() {
      setState(() {
        showPass = !showPass;
      });
    }

    final loginText = Text(
      'Sign in   ',
      style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
    );

    return Container(
      padding: EdgeInsets.only(right: 32, left: 24, top: 64),
      child: Column(
        children: <Widget>[
          Form(
            autovalidate: _autoValidate,
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('USERNAME'),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.only(left: 4),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      hintText: 'Username',
                    ),
                    controller: _usernameController,
                    validator: (val) {
                      if (val.length == 0) {
                        return "Isi username Anda";
                      } else {
                        return null;
                      }
                    },
                    enableSuggestions: true,
                    onChanged: (val) {
                      setState(() {
                        _usernameController.text;
                      });
                    },
                    keyboardType: TextInputType.visiblePassword,
                    onSaved: (String val) {
                      _usernameController.text = val;
                    },
                  ),
                ),
                SizedBox(height: 16),
                Text('PASSWORD'),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.only(left: 4),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        color: Colors.orange[200],
                        icon: Icon(
                            showPass ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          _showPassword();
                        },
                      ),
                    ),
                    controller: _passwordController,
                    validator: (val) {
                      if (val.length == 0) {
                        return "Isi password Anda";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (String val) {
                      _passwordController.text = val;
                    },
                    obscureText: showPass,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          splashColor: Colors.orangeAccent,
                          color: Colors.orange,
                          onPressed: isLoading
                              ? null
                              : () {
                                  _onLoginButtonPressed();
                                },
                          child: isLoading
                              ? CupertinoActivityIndicator()
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    loginText,
                                    Image.asset('assets/images/Vector 1.png'),
                                  ],
                                )),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          FlatButton(
              onPressed: () {},
              child: Text('Create an account',
                  style: TextStyle(color: Colors.grey))),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
