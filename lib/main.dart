import 'package:flutter/material.dart';

import 'offers_price.dart';

void main() {
  runApp(const MyApp());
}

class Greet extends StatefulWidget {
  const Greet({super.key});

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  var name = "Yeampier";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Text("Hi $name",
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.brown,
                      fontWeight: FontWeight.w900)),
              const Text("!!!"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
              onChanged: (value) => setState(
                    () => name = value,
                  )),
        ),
      ],
    );
  }
}

class Helloworld extends StatelessWidget {
  const Helloworld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Hello World!!!!!!!");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffe Masters',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
        "assets/logo.png",
      )),
      body: (const OffersPage()),
    );
  }
}
