import 'package:flutter/material.dart';

class FeedCardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        );
  }
}