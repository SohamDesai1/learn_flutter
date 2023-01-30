import 'package:flutter/material.dart';
import 'package:untitled/demo.dart';
void main() => runApp(const MaterialApp(
  home: Page1(),
));

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}


class _Page1State extends State<Page1> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: const Text('Demo Page'),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child:  Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Name',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Soham Desai',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 20,
              color: Colors.black12,
              thickness: 2,
            ),
            const Text(
              'Level',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('$level', style: const TextStyle(color: Colors.white))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            UserAccountsDrawerHeader(accountName: Text("Soham"),
                accountEmail: Text("abc@xyz.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text("S"),
            ),
            ),
            SizedBox(
              height: 20,
            ),
           TextButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => Page()));
           }, child: Text("dwsd"))
          ],
        ),
      ) ,
    );
  }
}