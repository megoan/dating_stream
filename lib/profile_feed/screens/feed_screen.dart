import 'package:dating_stream/profile/screens/profile_view.dart';
import 'package:dating_stream/profile_feed/widgets/feed_cards/feed_card_video.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(
        initialPage: 0,
        viewportFraction: 1,
      ),
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (_, index) {
        return InkWell(
          child: FeedCardVideo(),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileView()),
            );
          },
        );
      },
    );
  }
}
