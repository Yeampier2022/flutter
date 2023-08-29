import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
widget Tree
  MyApp
    MyHomePage
      Helloworld
        Text
*/

class Greet extends StatelessWidget {
  const Greet({super.key});

  @override
  Widget build(BuildContext context) {
    var name = "Yeampier";
    return Column(
      children: [
        Text("hola $name"),
        TextField(
          onChanged: (value) => name = value,
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Greet(),
    );
  }
}
