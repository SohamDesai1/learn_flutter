import 'package:flutter/material.dart';
import 'package:learn/comp_provider.dart';
import 'package:learn/provider2.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const Main(),
  );
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => NameProvider())],
      child: const MaterialApp(
        home: Home2(),
      ),
    );
  }
}
