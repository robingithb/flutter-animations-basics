import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: AnimatedContainer(
        height: _selected ? 200.00 : 300.00,
        width: _selected ? 300.00 : 200.00,
        color: _selected ? Colors.red : Colors.blue,
        alignment: _selected ? Alignment.center : Alignment.topLeft,
        curve: Curves.fastOutSlowIn,
        duration: const Duration(seconds: 3),
        child: Center(
          child: FlutterLogo(
            size: 30,
          ),
        ),
      ),
    );
  }
}
