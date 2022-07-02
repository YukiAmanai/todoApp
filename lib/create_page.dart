import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {

  String _title = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("投稿する"),
      ),
      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text ("今日のTODOを入力してください"),
              TextField(
                onChanged: (String text) => _title = text,
              ),
              ElevatedButton(
                child: const Text("追加"),
                onPressed: () => Navigator.pop(context, _title),
              ),
            ]
        ),
      ),
    );
  }
}