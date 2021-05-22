import 'package:flutter/material.dart';

import 'my_network_image.dart';

class ProfileCircle extends StatelessWidget {
  final double size;
  final String url;
  ProfileCircle(this.url,this.size);
  @override
  Widget build(BuildContext context) {
    return Container(
                height: size,
                width: size,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size),
                  child: MyNetworkImage(url,height: size,)),
              );
  }
}