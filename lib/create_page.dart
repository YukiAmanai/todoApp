import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create TODO"),
      ),
      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("新規作成ページ"),
              ElevatedButton(
                child: const Text("Back"),
                onPressed: () => Navigator.pop(context),
              ),
            ]
        ),
      ),
    );
  }
}