import 'package:flutter/material.dart';
import 'plants.dart';
import 'sign_in.dart';
import 'package:carousel_slider/carousel_slider.dart';


class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);
  //final items = ["Android", "iOS", "Desktop", "Web"];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                    child: SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                            child: Container(
                              width: 200,
                              child: TextFormField(
                                //controller: myController1,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Search Product',
                                  prefixIcon: Icon(Icons.search),
                                ),

                              ),
                            ),
                          ),

                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.black,
                                          onSurface: Colors.red,
                                          shape: const CircleBorder(),
                                          padding: EdgeInsets.all(10),
                                          backgroundColor: Colors.deepOrange[100],
                                        ),
                                        onPressed: () {

                                        },
                                        child: const Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Colors.black,

                                        )
                                    ),
                                  )
                                ],

                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Colors.black,
                                          onSurface: Colors.red,
                                          shape: const CircleBorder(),
                                          padding: const EdgeInsets.all(10),
                                          backgroundColor: Colors.deepOrange[100],
                                        ),
                                        onPressed: () {

                                        },
                                        child: const Icon(
                                          Icons.notifications_none,
                                          color: Colors.black,

                                        )
                                    ),
                                  )
                                ],

                              )
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,
                                            onSurface: Colors.red,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)),
                                            padding: EdgeInsets.all(12),
                                            backgroundColor: Colors.deepOrange[100],
                                          ),
                                          onPressed: () {

                                          },
                                          child: const Icon(
                                            Icons.car_rental_outlined,
                                            color: Colors.black,

                                          )
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: Text(
                                          'Car'
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,
                                            onSurface: Colors.red,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)),
                                            padding: EdgeInsets.all(12),
                                            backgroundColor: Colors.deepOrange[100],
                                          ),
                                          onPressed: () {

                                          },
                                          child: const Icon(
                                            Icons.fastfood,
                                            color: Colors.black,

                                          )
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: Text(
                                          'Food'
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,
                                            onSurface: Colors.red,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)),
                                            padding: EdgeInsets.all(12),
                                            backgroundColor: Colors.deepOrange[100],
                                          ),
                                          onPressed: () {

                                          },
                                          child: const Icon(
                                            Icons.electrical_services,
                                            color: Colors.black,

                                          )
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: Text(
                                          'Electronics'
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,
                                            onSurface: Colors.red,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)),
                                            padding: EdgeInsets.all(12),
                                            backgroundColor: Colors.deepOrange[100],
                                          ),
                                          onPressed: () {

                                          },
                                          child: const Icon(
                                            Icons.chair,
                                            color: Colors.black,

                                          )
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: Text(
                                          'Chair'
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,
                                            onSurface: Colors.red,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)),
                                            padding: EdgeInsets.all(12),
                                            backgroundColor: Colors.deepOrange[100],
                                          ),
                                          onPressed: () {
                                            
                                          },
                                          child: const Icon(
                                            Icons.masks,
                                            color: Colors.black,

                                          )
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                      child: Text(
                                          'Mask'
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                  ),
                ],
              ),
            )
        ),

      ),
    );
  }
}
