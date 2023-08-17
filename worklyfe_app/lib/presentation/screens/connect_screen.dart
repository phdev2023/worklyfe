import 'package:flutter/material.dart';

class ConnectScreen extends StatelessWidget {
  final ScrollController? controller;
  const ConnectScreen({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      controller: controller,
      itemBuilder: (c, index) {
        return const Text("data");
      },
      itemCount: 100,
    ));
  }
}
