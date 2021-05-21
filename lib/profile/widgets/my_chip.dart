import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  final String text;
  final String emoji;
  MyChip(this.text,this.emoji);
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Text(emoji,style: TextStyle(fontSize: 18),),
      label: Text(text,style: TextStyle(color:Colors.blue),),
      backgroundColor: Colors.white,
      shape: StadiumBorder(
        side: BorderSide(
          width: 1,
          color: Colors.blue,
        ),
      ),
    );
  }
}
