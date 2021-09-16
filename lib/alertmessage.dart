import 'package:flutter/material.dart';
import 'sign_in.dart';


showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignIn()),
      );
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    content: Text("Mail or Password Incorrect"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}