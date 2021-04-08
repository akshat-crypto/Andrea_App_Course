import 'package:demo1/SignIn/CompleteSignInButton.dart';
import 'package:demo1/SignIn/CustomRaisedButton.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  /*SignIn(
      {Key key,
      @required String text,

      ///required keyword used => main prop while calling functn
      Color color,
      Color textcolor,
      VoidCallback onPressed})
      : assert(text != null),
        super(
          key: key,
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: 15.0,
            ),
          ),
          color: color,
          onPressed: onPressed,
        );
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
        elevation: 2.0,
      ),
      body: _buildContent(),
    );
  }

  //defining a private method here
  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'SIGN IN',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          CompleteSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign In with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: null,
          ),
          SizedBox(
            height: 8.0,
          ),
          CompleteSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Sign In with Facebook',
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: null,
          ),
          SizedBox(
            height: 8.0,
          ),
          CompleteSignInButton(
            assetName: 'images/gmail-logo.png',
            text: 'Sign In with Gmail',
            textColor: Colors.white,
            color: Colors.red,
            onPressed: null,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          CompleteSignInButton(
            assetName: 'images/anonymous.png',
            text: 'Sign In Anonymously',
            textColor: Colors.black,
            color: Colors.white,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
