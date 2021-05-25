import 'package:dating_stream/utils/models/video.dart';
import 'package:flutter/material.dart';

class VideoProvider extends ChangeNotifier {
  static String vidTest = 'https://ak.picdn.net/shutterstock/videos/1070videoThreshold10videoThreshold60/preview/stock-footage-a-wooden-tablet-full-of-carved-signs-in-etruscan-a-civilization-of-italy-in-ancient-times.mp4';
  List<Video> videos = [
    Video(url: vidTest),
    Video(url: vidTest),
    Video(url: vidTest),
    Video(url: vidTest),
    Video(url: vidTest),
  ];
  int videoThreshold = 5;

  Future<void> loadMore() async {
    for (var i = 0; i < videoThreshold; i++) {
      videos.add(Video(url: vidTest));
    }
    for (var item in videos) {
      if (item.controller == null) {
        await item.loadController();
      }
    }
    Future.delayed(Duration(seconds: 3));
    notifyListeners();
  }

  Future<List<Video>> getVids() async {
    for (var item in videos) {
      if (item.controller == null) {
        await item.loadController();
      }
    }
    //await Future.delayed(Duration(seconds: 3));
    return videos;
  }

  void playVideo(int index)async{

      int disposeStartMin = 0;
      int disposeStartMax = 0;
      int disposeEndMin = 0;
      int disposeEndMax = 0;
      int initStartMin = 0;
      int initStartMax = 0;

      if (index > videoThreshold) {
        disposeStartMin = 0;
        disposeStartMax = index - videoThreshold;
        initStartMin = index - 4;
      } else {
        disposeStartMin = -1;
        disposeStartMax = -1;
      }

      if (videos.length - index > videoThreshold) {
        disposeEndMin = index + 6;
        disposeEndMax = videos.length - 1;
        initStartMax = index + videoThreshold;
      } else {
        disposeEndMin = -1;
        disposeEndMax = -1;
        initStartMax = videos.length - 1;
      }
    
    for (var video in videos) {
      video.controller!.pause();
    }
    videos[index].controller!.play();
  }
}
