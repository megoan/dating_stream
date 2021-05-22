import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_stream/utils/widgets/my_network_image.dart';
import 'package:flutter/material.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  final double height;
  final int indexCurrent;
  final bool expand;
  CarouselWithIndicatorDemo(this.height, this.indexCurrent, this.expand);
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  List<Widget> imageSliders = [];
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  void initState() {
    _current = widget.indexCurrent;
    for (var i = 0; i < imgList.length; i++) {
      imageSliders.add(Hero(
        tag: "profilePic" + i.toString(),
        child: GestureDetector(
          onTap: widget.expand
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarouselWithIndicatorDemo(widget.height * 2, i, false)),
                  );
                }
              : null,
          child: Container(
            height: widget.height,
            child: MyNetworkImage(imgList[i],height :widget.height),
          ),
        ),
      ));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      CarouselSlider.builder(
        itemCount: imageSliders.length,
        itemBuilder: (ctx, i, index) {
          return imageSliders[i];
        },
        // items: imageSliders,
        options: CarouselOptions(
            initialPage: _current,
            height: widget.height,
            viewportFraction: 1.0,
            autoPlay: false,
            enlargeCenterPage: false,
            aspectRatio: 3,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: (width - 60) / imgList.length,
              height: 6.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(3),
                  //shape: BoxShape.circle,
                  color: _current == index ? Colors.white : Colors.blueAccent),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
