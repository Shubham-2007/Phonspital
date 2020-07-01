import 'package:flutter/material.dart';

class Webinars extends StatefulWidget {
  @override
  _WebinarsState createState() => _WebinarsState();
}

class _WebinarsState extends State<Webinars> {
  List<String> videos = [
    'images/v1.jpg',
    'images/v2.jpg',
    'images/v3.jpg',
    'images/v4.jpg'
  ];

  List<String> title = [
    'Health Tips',
    'Get fit',
    'Doctor\'s advice',
    'Daily health tips'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return VideoWidget(
              image: videos[index],
              title: title[index],
            );
          }),
    );
  }
}

class VideoWidget extends StatelessWidget {
  final image;
  final title;

  const VideoWidget({Key key, this.image, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(-2, -2), blurRadius: 20.0)
            ],
            border: Border.all(width: 1.0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                image: AssetImage(this.image), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0),
              child: Text(
                this.title,
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            SizedBox(
              height: 172.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.white),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                  IconButton(icon: Icon(Icons.share), onPressed: () {}),
                  IconButton(icon: Icon(Icons.save), onPressed: () {}),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}