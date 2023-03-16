// ignore_for_file: file_names, prefer_const_constructors, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PathProvider(),
    ));

class PathProvider extends StatefulWidget {
  const PathProvider({super.key});

  @override
  State<PathProvider> createState() => _PathProviderState();
}

class _PathProviderState extends State<PathProvider> {
  Future<void> getPath() async {
    if (Platform.isAndroid) {
      Directory? ext = await getExternalStorageDirectory();
      String storage = ext!.path;
      print(storage);
    }
  }

  @override
  Widget build(BuildContext context) {
    Directory temp;
    Directory temp1;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => getPath(), child: Text("Get External")),
          ElevatedButton(
              onPressed: () async =>
                  {temp = await getTemporaryDirectory(), print(temp)},
              child: Text("Get Temp")),
          ElevatedButton(
              onPressed: () async => {
                    temp1 = await getApplicationDocumentsDirectory(),
                    print(temp1)
                  },
              child: Text("Get Path")),
        ],
      )),
    );
  }
}
