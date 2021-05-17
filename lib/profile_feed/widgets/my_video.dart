import 'package:flutter/material.dart';

class MyVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(child: Image.network("https://picsum.photos/200/300"),fit: BoxFit.fill,);
  }
}