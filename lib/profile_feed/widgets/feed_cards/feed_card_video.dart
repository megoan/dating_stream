import 'package:dating_stream/profile_feed/widgets/my_video.dart';
import 'package:flutter/material.dart';

import '../my_media.dart';

class FeedCardVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: MyMedia(mediaWidget: MyVideo(),)),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  CircleAvatar(child: CircleAvatar(radius: 25,backgroundImage: NetworkImage("https://picsum.photos/200/300"),),radius: 27,backgroundColor: Colors.white,),
                  SizedBox(width:10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Heelo Again",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 15),),
                      SizedBox(height: 4,),
                       Text("21 | Jerusalem, Israel",style: TextStyle(color:Colors.white,fontSize: 13),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}