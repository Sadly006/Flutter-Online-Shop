import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/sign_in.dart';
import 'home_page.dart';
import 'alertmessage.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpForm(),
    );
  }
}


// Define a custom Form widget.
class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _SignUpFormState extends State<SignUpForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final email = TextEditingController();
  final user_name = TextEditingController();
  final contact_number = TextEditingController();
  final password = TextEditingController();


  _postData() async {
    print(email.text);
    final response = await http.post(
        Uri.parse("https://sadly007.000webhostapp.com/register.php"),
        body:{
          'email':email.text.toString(),
          'user_name':user_name.text.toString(),
          'contact_number':contact_number.text.toString(),
          'password':password.text.toString(),
        }
      //headers: _setHeaders(),
    );
    //var body = json.decode(response.body);
    if(response.body=="succeeded") {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const home_page()),
      );

    }
    else{
      showAlertDialog(context);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Hello!!'),
        backgroundColor: Colors.deepOrange[400],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 50)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                child: TextFormField(
                  controller: user_name,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                child: TextFormField(
                  controller: contact_number,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Contact Number',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                child: TextFormField(
                  obscureText: true,
                  controller: password,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange[400],
                    onSurface: Colors.red,
                  ),
                  onPressed: () {
                    _postData();
                  },
                  child: const Text('Sign Up!'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      onSurface: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: const Text('Sign In!')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}