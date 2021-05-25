import 'package:dating_stream/profile/screens/profile_view.dart';
import 'package:dating_stream/profile_feed/providers/video_provider.dart';
import 'package:dating_stream/profile_feed/widgets/feed_cards/feed_card_video.dart';
import 'package:dating_stream/utils/models/video.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final videoProvider = Provider.of<VideoProvider>(context);
    return FutureBuilder<List<Video>>(
      future: videoProvider.getVids(),
      builder: (context,snapshot){
        if (snapshot.hasData&&snapshot.data!=null &&snapshot.data!.length>0) {
        return  PageView.builder(
        controller: PageController(
          initialPage: 0,
          viewportFraction: 1,
        ),
        scrollDirection: Axis.vertical,
        itemCount: snapshot.data!.length,
        itemBuilder: (_, index) {
          videoProvider.playVideo(index);
          return InkWell(
            child: FeedCardVideo(snapshot.data![index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileView()),
              );
            },
          );
        },
      );}
      else{
        return Center(child: CircularProgressIndicator());
      }
      },
     
    );
  }
}
