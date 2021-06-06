import 'package:flutter/material.dart';

class NormalPage extends StatefulWidget {
  const NormalPage({Key key}) : super(key: key);

  @override
  State<NormalPage> createState() => _NormalPageState();
}

class _NormalPageState extends State<NormalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("普通割り勘"),),
    );
  }
}
