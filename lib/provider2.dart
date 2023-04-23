import 'package:flutter/material.dart';
import 'package:learn/comp_provider.dart';
import 'package:learn/provider3.dart';
import 'package:provider/provider.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<NameProvider>(
      builder: (context, nameProviderModel, child) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  height: 100,
                  child: TextField(
                    controller: _name,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      nameProviderModel.add(_name.text);
                      setState(() {
                        _name.clear();
                      });
                    },
                    child: const Text("add")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Display()));
                    },
                    child: const Text("See"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
