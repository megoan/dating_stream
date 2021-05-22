import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:transparent_image/transparent_image.dart';

class MyNetworkImage extends StatelessWidget {
  final String url;
  final double height;
  MyNetworkImage(this.url, {this.height = double.infinity});
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Center(
                child: Container(
                  height: height,
              color: Colors.white,
            ))),
        Center(
          child: FadeInImage.memoryNetwork(
            height: height,
            placeholder: kTransparentImage,
            fit: BoxFit.fill,
            image: url,
          ),
        ),
      ],
    );
  }
}
