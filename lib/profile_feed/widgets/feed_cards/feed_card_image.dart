import 'package:dating_stream/profile_feed/widgets/my_image.dart';
import 'package:flutter/material.dart';

import '../my_media.dart';
import '../profile_info_short.dart';

class FeedCardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Positioned.fill(child: MyMedia(mediaWidget: MyImage(),)),
         PositionedDirectional(
          bottom: 0,
          start: 0,
          child: Padding(padding: const EdgeInsets.all(12.0), child: ProfileInfoShort()),
        ),
      ],
    );
  }
}