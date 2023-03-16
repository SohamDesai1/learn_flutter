// ignore_for_file: file_names, prefer_const_constructors, avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PathProvider2(),
    ));

class PathProvider2 extends StatefulWidget {
  const PathProvider2({super.key});

  @override
  State<PathProvider2> createState() => _PathProvider2State();
}

class _PathProvider2State extends State<PathProvider2> {
  Future<void> getPath() async {
    Directory dir;
    if (Platform.isAndroid) {
      dir = (await getExternalStorageDirectory())!;
      String newPath = "";
      List folders = dir.path.split("/");
      for (var i = 0; i < folders.length; i++) {
        String folder = folders[i];
        if (folder != "Android") {
          newPath += "/$folder";
        } else {
          break;
        }
      }
      newPath += "/demo";
      dir = Directory(newPath);
      print(dir.path);
    }
  }

  void writeData(){
    if (Platform.isAndroid) {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    Directory di;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => getPath(), child: Text("Get custom path")),
            ElevatedButton(
                onPressed: () async =>
                    {di = (await getExternalStorageDirectory())!, print(di)},
                child: Text("Get custom path")),
          ],
        ),
      ),
    );
  }
}
