import 'package:video_player/video_player.dart';

class Video {
  String id;
  String user;
  String userPic;
  String videoTitle;
  String songName;
  String likes;
  String comments;
  String url;
  bool disposed;

  VideoPlayerController? controller;

  Video({
    this.id="-1",
    this.user="",
    this.userPic="",
    this.videoTitle="",
    this.songName="",
    this.likes="",
    this.comments="",
    this.url="",
    this.disposed=true,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    data['user_pic'] = this.userPic;
    data['video_title'] = this.videoTitle;
    data['song_name'] = this.songName;
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['url'] = this.url;
    return data;
  }

  Future<Null> loadController() async {
    if (disposed) {
      disposed=false;
      controller = VideoPlayerController.network(url);
      await controller?.initialize();
      controller?.setLooping(true);
    }
  }
}
