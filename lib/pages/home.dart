import 'package:basic_workshop_001/pages/two.dart';
import 'package:flutter/material.dart';

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
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Welcome Rahul",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageTwo(
                        title: 'Notifications',
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Messages",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
