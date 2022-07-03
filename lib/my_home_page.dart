import 'package:flutter/material.dart';
import 'create_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Todo {
  String title;
  IconData icon;

  Todo(this.title, this.icon);
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> _todoItems = [
    Todo("英語の問題", Icons.description),
    Todo("牛乳を買う", Icons.local_grocery_store),
    Todo("参考書", Icons.watch_later)

  ];

  void _addTodo(Todo todo) {
    setState(() {
      _todoItems.add(todo);
    });
  }

  void _deleteTodo(int index) {
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タイトル'),
      ),
      body:ListView.builder(
        itemCount: _todoItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.redAccent),
              ),
              child: ListTile(
                leading: Icon(
                  _todoItems[index].icon,
                  size: 35.0,
                ),
                title: Text(_todoItems[index].title),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(_todoItems[index].title),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                          onPressed: () {
                            _deleteTodo(index);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String? title = await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const CreatePage()));
          if (title != null && title != "") _addTodo(Todo(title, Icons.add));
        },
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
