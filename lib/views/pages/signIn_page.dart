import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pt_project_01/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final String _email = 'k';
  final String _password = 'k';

  // bool _checkEmail() {
  //   if (_email.compareTo(_emailEditingController.text) == 0) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // bool _checkpassword() {
  //   if (_password.compareTo(_passwordEditingController.text) == 0) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

//variable for temporary login
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  //focusnodes for getting inputs from signinpage
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  //catching inputs in signin and password

  final _signInFormkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  bool _isObsecure = true;
  _lauchURL(_url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
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
          key: _signInFormkey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 55,
              ),
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
              FlatButton(
                child: Text(
                  'forgot your password ?',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.deepPurple,
                          child: Text(
                            'LOG IN',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            if (_signInFormkey.currentState.validate()) {
                              if (_email == _emailEditingController.text &&
                                  _password ==
                                      _passwordEditingController.text) {
                                Navigator.pushReplacementNamed(
                                    context, homePage);
                              } else {
                                print('never');
                                _scaffoldkey.currentState.showSnackBar(SnackBar(
                                  content: ListTile(
                                    leading:
                                        Icon(Icons.error, color: Colors.red),
                                    title: Text('Incorrect email or password'),
                                    trailing:
                                        Icon(Icons.error, color: Colors.red),
                                  ),
                                  backgroundColor: Colors.deepPurple,
                                  duration: Duration(seconds: 1),
                                ));
                              }
                            }
                          },
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 130,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          const facebookUrl = "https://facebook.com";
                          _lauchURL(facebookUrl);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[100],
                              border:
                                  Border.all(width: 2, color: Colors.grey[50])),
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        const twitterUrl = "https://twitter.com";
                        _lauchURL(twitterUrl);
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[100],
                            border:
                                Border.all(width: 2, color: Colors.grey[50])),
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          const instagramUrl = "https://instagram.com";
                          _lauchURL(instagramUrl);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[100],
                              border:
                                  Border.all(width: 2, color: Colors.grey[50])),
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.pink[900],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
