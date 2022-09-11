import 'package:flutter/material.dart';
import 'package:isha/pages/about_page.dart';
import 'package:isha/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String dbName = "isha.database";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iSha',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'iSha'),
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 0,
                  child: Text("Settings"),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("About"),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                // go to settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPage(),
                  ),
                );
              } else if (value == 1) {
                // go to about page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => AboutPage(),
                  ),
                );
              }
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
