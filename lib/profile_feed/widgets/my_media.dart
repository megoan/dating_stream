import 'package:flutter/material.dart';

class MyMedia extends StatelessWidget {
  final Widget? mediaWidget;
  MyMedia({@required this.mediaWidget});
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [        
        Container(child: this.mediaWidget??Container(),),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black54,
              ],
              stops: [0.7,1]
            ),
            )
        ),
      ],
    );
  }
}