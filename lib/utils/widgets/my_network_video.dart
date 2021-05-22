import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:video_player/video_player.dart';

class MyNetworkVideo extends StatefulWidget {
  @override
  _MyNetworkVideoState createState() => _MyNetworkVideoState();
}

class _MyNetworkVideoState extends State<MyNetworkVideo> {
  VideoPlayerController _controller = VideoPlayerController.asset("hhttps://ak.picdn.net/shutterstock/videos/1070510560/preview/stock-footage-a-wooden-tablet-full-of-carved-signs-in-etruscan-a-civilization-of-italy-in-ancient-times.mp4");

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('https://ak.picdn.net/shutterstock/videos/1070510560/preview/stock-footage-a-wooden-tablet-full-of-carved-signs-in-etruscan-a-civilization-of-italy-in-ancient-times.mp4')
      ..initialize().then((_) {
        print("initialized");
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
      _controller.setLooping(true);
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _controller.value.isPlaying ? _controller.pause() : _controller.play();
        });
      },
      child: Center(
        child: _controller.value.isInitialized
            ? VideoPlayer(_controller)
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

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
