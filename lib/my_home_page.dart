import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<String> _todoItems = [
    "英語の課題",
    "牛乳を買う",
    "Amanai Yuki",
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yuki Amanai'),
      ),
      body:ListView.builder(
        itemCount: _todoItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.red),
              ),
              child: ListTile(
                title: Text(_todoItems[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}