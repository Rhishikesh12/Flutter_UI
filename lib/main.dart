import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const FlutterUI(),
    );
  }
}

class FlutterUI extends StatelessWidget {
  const FlutterUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const FlutterLogo(
          size: 25.0,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
            color: Colors.grey),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: const Alignment(0.0, -0.40),
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: const Text(
                  "GET YOUR TICKET",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6.0,
                      spreadRadius: 0.1,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: <Widget>[
                          Container(
                            padding:
                                const EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                            child: const Text(
                              'YOU HAVE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(
                                25.0, 40.0, 5.0, 25.0),
                            child: const Text(
                              '206',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
              Container(),
            ],
          ),
        ],
      ),
    );
  }
}
