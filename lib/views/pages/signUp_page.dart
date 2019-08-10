import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pt_project_01/constants/constants.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _confirmpasswordFocusNode = FocusNode();
  //focusnodes for getting inputs from signinpage
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _confirmpasswordEditingController =
      TextEditingController();
  //catching inputs in signin and password
  bool _isObsecure = true;
  final _signUpFormkey = GlobalKey<FormState>();

  final _passwordFormkey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.deepPurple,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _signUpFormkey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 55),
              Text(
                'Team App',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'TAKE A STEP',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, top: 40, right: 40, bottom: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty)
                      return 'email required';
                    else
                      return null;
                  },
                  focusNode: _emailFocusNode,
                  controller: _emailEditingController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: '****@example.com',
                      labelText: 'Email Address'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, top: 5, right: 40, bottom: 5),
                child: TextFormField(
                  key: _passwordFormkey,
                  obscureText: _isObsecure,
                  validator: (value) {
                    if (value.isEmpty)
                      return 'password required';
                    else
                      return null;
                  },
                  focusNode: _passwordFocusNode,
                  controller: _passwordEditingController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObsecure = !_isObsecure;
                            });

                            print(_isObsecure);
                          },
                          icon: Icon(_isObsecure
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: '*********',
                      labelText: 'PASSWORD'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, top: 5, right: 40, bottom: 5),
                child: TextFormField(
                  obscureText: _isObsecure,
                  validator: (value) {
                    if (value.isEmpty)
                      return 'confirm password required';
                      else if (value != _passwordFormkey.currentState.value){
                        return"password do not match";
                      }
                    else
                      return null;
                  },
                  focusNode: _confirmpasswordFocusNode,
                  controller: _confirmpasswordEditingController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObsecure = !_isObsecure;
                            });

                            print(_isObsecure);
                          },
                          icon: Icon(_isObsecure
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: '*********',
                      labelText: 'CONFIRM PASSWORD'),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20, right: 40),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.deepPurple,
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            if (_signUpFormkey.currentState.validate()) {
                              print(_emailEditingController.text);
                              Navigator.pushReplacementNamed(context, homePage);
                            }
                          },
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
