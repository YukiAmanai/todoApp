import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPage();
}

class _ChartPage extends State<ChartPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('円グラフ画面'),
      ),
    );

  }

}
