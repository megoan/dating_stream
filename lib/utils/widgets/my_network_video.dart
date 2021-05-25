import 'package:dating_stream/utils/models/video.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:video_player/video_player.dart';

class MyNetworkVideo extends StatefulWidget {
  final Video video;
  MyNetworkVideo(this.video);
  @override
  _MyNetworkVideoState createState() => _MyNetworkVideoState();
}

class _MyNetworkVideoState extends State<MyNetworkVideo> {
 



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
        widget.video.controller!.value.isPlaying ? widget.video.controller!.pause() : widget.video.controller!.play();
        });
      },
      child: Center(
        child: widget.video.controller!.value.isInitialized
            ? VideoPlayer(widget.video.controller!)
            : Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Center(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   widget.video.controller!.dispose();
  // }
}
