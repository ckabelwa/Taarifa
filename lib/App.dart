import 'package:flutter/material.dart';
import 'package:pt_project_01/constants/constants.dart';
import 'package:pt_project_01/views/pages/homepage.dart';
import 'package:pt_project_01/views/pages/login_page.dart';
import 'package:pt_project_01/views/pages/signIn_page.dart';
import 'package:pt_project_01/views/pages/signUp_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LoginPage(),
      routes: {
        loginPage:(BuildContext context)=> LoginPage(),
        signUpPage:(BuildContext context)=> SignUpPage(),
        signInPage:(BuildContext context)=> SignInPage(),
        homePage:(BuildContext context)=> HomePage(),
        } ,
      debugShowCheckedModeBanner:false,
    );
  }
}
