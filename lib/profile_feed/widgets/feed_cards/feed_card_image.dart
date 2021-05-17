import 'package:dating_stream/profile_feed/widgets/my_image.dart';
import 'package:flutter/material.dart';

import '../my_media.dart';

class FeedCardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Positioned.fill(child: MyMedia(mediaWidget: MyImage(),)),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                CircleAvatar(),
                SizedBox(width:10),
                Text("heelo again"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}