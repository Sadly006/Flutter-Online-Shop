import 'dart:convert';
import 'package:flutter/material.dart';
import 'alertmessage.dart';
import 'package:http/http.dart' as http;

class NewProduct extends StatelessWidget {
  const NewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewProductForm(),
    );
  }
}


// Define a custom Form widget.
class NewProductForm extends StatefulWidget {
  const NewProductForm({Key? key}) : super(key: key);

  @override
  _NewProductFormState createState() => _NewProductFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _NewProductFormState extends State<NewProductForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final name = TextEditingController();
  final brand = TextEditingController();
  final type = TextEditingController();
  final availability = TextEditingController();
  final price = TextEditingController();


  _postData() async {
    final response = await http.post(
        Uri.parse("https://sadly007.000webhostapp.com/product_posting.php"),
        body:{
          'name':name.text.toString(),
          'brand':brand.text.toString(),
          'type':type.text.toString(),
          'availability':availability.text.toString(),
          'price':price.text.toString(),
        }
      //headers: _setHeaders(),
    );
    //var body = json.decode(response.body);
    if(response.body=="succeeded") {

      print("done!");

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
                  controller: name,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                child: TextFormField(
                  controller: brand,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'brand',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                child: TextFormField(
                  controller: type,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'type',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                child: TextFormField(
                  controller: availability,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'availability',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                child: TextFormField(
                  controller: price,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'price',
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
                  child: const Text('Submit Product'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}