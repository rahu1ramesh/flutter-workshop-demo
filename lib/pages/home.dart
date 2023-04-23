import 'package:basic_workshop_001/pages/notifications.dart';
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
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Welcome Rahul",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.black,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationsPage(
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
