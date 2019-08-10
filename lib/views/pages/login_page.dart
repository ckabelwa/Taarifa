import 'package:flutter/material.dart';
import 'package:pt_project_01/constants/constants.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 190,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/icons/diamond.png'),
                height: 100,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Team App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'The app taglne goes here',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Text(
                'LOG IN',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {Navigator.pushNamed(context, signInPage );},
            ),
            FlatButton(
              child: Text(
                'SIGN UP',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {Navigator.pushNamed(context, signUpPage );},
            )
          ],
        ),
      ),
    );
  }
}
