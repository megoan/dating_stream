import 'package:dating_stream/profile/widgets/image_slider.dart';
import 'package:dating_stream/profile/widgets/my_chip.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  final TextStyle myStyleBig = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[600]);
  final TextStyle titileStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  final lineheight = 24.0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.blue[100],
        child: SingleChildScrollView(
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              child: Container(
                height: height / 2,
                child: CarouselWithIndicatorDemo(height / 2, 0, true),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                  //shape: BoxShape.circle,
                ),
              ),
            ),
            // CarouselWithIndicatorDemo(),
            // Hero(
            //   tag: "profilePic0",
            //   child: Container(
            //     height: height / 2,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: NetworkImage('https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',),
            //         fit: BoxFit.fill,
            //       ),
            //       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            //       //shape: BoxShape.circle,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                //shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Heelo Again", style: titileStyle),
                      Text(", ", style: titileStyle),
                      Text("24", style: titileStyle),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.blue[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Jerusalem"),
                      Text(", "),
                      Text("Israel"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "סטטוס",
                            style: myStyleBig,
                          ),
                          Text("רווקה"),
                          SizedBox(
                            height: lineheight,
                          ),
                          Text(
                            "השקפה",
                            style: myStyleBig,
                          ),
                          Text("לאומי"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "גובה",
                            style: myStyleBig,
                          ),
                          Text("1.64"),
                          SizedBox(
                            height: lineheight,
                          ),
                          Text(
                            "רמה דתית",
                            style: myStyleBig,
                          ),
                          Text("רגיל"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "עישון",
                            style: myStyleBig,
                          ),
                          Text("לפעמים"),
                          SizedBox(
                            height: lineheight,
                          ),
                          Text(
                            "עדה",
                            style: myStyleBig,
                          ),
                          Text("צרפתי"),
                        ],
                      ),
                    ],
                  ),
                
                 
                  Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  SizedBox(
                    height: 15,
                  ),
                     Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Interests",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,color: Colors.black54),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      MyChip("blender","🎮"),
                      MyChip("programming","💻"),
                      MyChip("reading","📘"),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  SizedBox(
                    height: 15,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Personality",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,color: Colors.black54),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      MyChip("smart","🤓"),
                      MyChip("funny","😝"),
                     MyChip("quiet","😐"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  ],),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "about me",
                       style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(height: 4,),
                  Text("data likes daties!! "*10),
                    SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "looking for",
                       style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(height: 4,),
                  Text("data likes daties!! "*10),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
