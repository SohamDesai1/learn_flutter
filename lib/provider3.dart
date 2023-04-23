import 'package:flutter/material.dart';
import 'package:learn/comp_provider.dart';
import 'package:provider/provider.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NameProvider>(
      builder: (context, nameProviderModel, child) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: ListView.builder(itemBuilder: (context, index) {
              return Text(nameProviderModel.names[index]);
            },itemCount:nameProviderModel.names.length ,),
          ),
        ),
      ),
    );
  }
}
