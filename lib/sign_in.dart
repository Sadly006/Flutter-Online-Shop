import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'home_page.dart';
import 'alertmessage.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignInForm(),
    );
  }
}

// Define a custom Form widget.
class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _SignInFormState extends State<SignInForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    super.dispose();
    password.dispose();
    super.dispose();
    }

  _validator() async {
    print(email.text);
    final response = await http.post(
        Uri.parse("https://sadly007.000webhostapp.com/login.php"),
        body:{
          'email':email.text.toString(),
          'password':password.text.toString(),
        }
      //headers: _setHeaders(),
    );
    //var body = json.decode(response.body);
    if(response.body=="Success") {

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
                    _validator();
                  },
                  child: Text('Sign In!'),
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
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: Text('Sign Up!')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}