import 'package:flutter/material.dart';
import 'monitors.dart';

class Plants extends StatelessWidget {
  const Plants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Plants',
            ),
            backgroundColor: Colors.deepOrange[400],
          ),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                      children: <Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 5,
                                    ),
                                  ),
                                  child: Image.network(
                                      'https://googleflutter.com/sample_image.jpg'),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    const Padding(padding: EdgeInsets.all(5),
                                      child: Text('Price: 250 tk'),
                                    ),

                                    Padding(padding: EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Padding(padding: const EdgeInsets.all(5),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.deepOrange[400],
                                                onSurface: Colors.red,
                                              ),
                                              onPressed: () {  },
                                              child: Text('Availability'),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.all(5),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.deepOrange[400],
                                                onSurface: Colors.red,
                                              ),
                                              onPressed: () {  },
                                              child: const Text('Order Now'),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.all(5),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.deepOrange[400],
                                                onSurface: Colors.red,
                                              ),
                                              onPressed: () {  },
                                              child: Text('Get Details'),
                                            ),
                                          ),
                                        ],
                                        ),
                                      ),

                                  ]
                                ),
                              ),
                            ]
                        ),

                        Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 5,
                                    ),
                                  ),
                                  child: Image.network(
                                      'https://googleflutter.com/sample_image.jpg'),
                                ),
                              ),
                              Padding(padding: const EdgeInsets.all(5),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      const Padding(padding: EdgeInsets.all(5),
                                        child: Text('Price: 250 tk'),
                                      ),

                                      Padding(padding: EdgeInsets.all(5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Availability'),
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Order Now'),
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Get Details'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ]
                                ),
                              ),
                            ]
                        ),

                        Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 5,
                                    ),
                                  ),
                                  child: const Image(
                                    image: AssetImage('assets/Monitor.jpg'),
                                      ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      const Padding(padding: EdgeInsets.all(5),
                                        child: Text('Price: 250 tk'),
                                      ),

                                      Padding(padding: EdgeInsets.all(5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Availability'),
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Order Now'),
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Get Details'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ]
                                ),
                              ),
                            ]
                        ),

                        Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 5,
                                    ),
                                  ),
                                  child: Image.network(
                                      'https://googleflutter.com/sample_image.jpg'),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      const Padding(padding: EdgeInsets.all(5),
                                        child: Text('Price: 250 tk'),
                                      ),

                                      Padding(padding: EdgeInsets.all(5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Availability'),
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Order Now'),
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.all(5),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.deepOrange[400],
                                                  onSurface: Colors.red,
                                                ),
                                                onPressed: () {  },
                                                child: Text('Get Details'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ]
                                ),
                              ),
                            ]
                        )

                      ]
                  )
              )
          ),

          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                  child: Text('Product Category'),
                ),
                ListTile(
                  title: const Text('Plants'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Plants()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Monitors'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Monitors()),
                    );
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}