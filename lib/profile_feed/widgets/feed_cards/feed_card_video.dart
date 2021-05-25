import 'package:dating_stream/utils/models/video.dart';
import 'package:dating_stream/utils/widgets/my_network_video.dart';
import 'package:flutter/material.dart';

import '../my_media.dart';
import '../profile_info_short.dart';

class FeedCardVideo extends StatelessWidget {
  final Video video;
  FeedCardVideo(this.video);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: MyMedia(
          mediaWidget: MyNetworkVideo(this.video),
        )),
        PositionedDirectional(
          bottom: 0,
          start: 0,
          child: Padding(padding: const EdgeInsets.all(12.0), child: ProfileInfoShort()),
        ),
      ],
    );
  }
}
