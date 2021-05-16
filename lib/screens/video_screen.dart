import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import '../video_widget/video_player_widget.dart';
import '../video_widget/videotile.dart';
import '../widgets/app_drawer.dart';

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/news1.mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller.play());
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(21, 38, 5, 1),
            title: Text(''),
          ),
          drawer: AppDrawer(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                child: Card(
                  child: Center(
                    child: Text(
                      "Videos",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              VideoPlayerWidget(
                controller: controller,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "This is Heading of the related new ws this is another",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                DateTime.now().day.toString() +
                    "-" +
                    DateTime.now().month.toString() +
                    "-" +
                    DateTime.now().year.toString(),
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "This is Heading of the realted news this is another heading of the news.",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  height: 40,
                  width: 320,
                  child: Card(
                    color: Colors.grey.shade200,
                    elevation: 10,
                    child: Center(
                      child: Text(
                        "Information",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView(
                children: [
                  VideoTile(
                      videourl:
                          "https://ichef.bbci.co.uk/news/976/cpsprodpb/1119A/production/_118524007_bafeaaec-7a2f-47f2-8ec2-7e0ad44dfbb9.jpg",
                      videoh1:
                          "This is Heading of the related new ws this is another"),
                  SizedBox(
                    height: 10,
                  ),
                  VideoTile(
                      videourl:
                          "https://ichef.bbci.co.uk/news/976/cpsprodpb/1119A/production/_118524007_bafeaaec-7a2f-47f2-8ec2-7e0ad44dfbb9.jpg",
                      videoh1:
                          "This is Heading of the related new ws this is another"),
                  SizedBox(
                    height: 10,
                  ),
                  VideoTile(
                      videourl:
                          "https://ichef.bbci.co.uk/news/976/cpsprodpb/1119A/production/_118524007_bafeaaec-7a2f-47f2-8ec2-7e0ad44dfbb9.jpg",
                      videoh1:
                          "This is Heading of the related new ws this is another"),
                  SizedBox(
                    height: 10,
                  ),
                  VideoTile(
                      videourl:
                          "https://ichef.bbci.co.uk/news/976/cpsprodpb/1119A/production/_118524007_bafeaaec-7a2f-47f2-8ec2-7e0ad44dfbb9.jpg",
                      videoh1:
                          "This is Heading of the related new ws this is another"),
                  SizedBox(
                    height: 10,
                  ),
                  VideoTile(
                      videourl:
                          "https://ichef.bbci.co.uk/news/976/cpsprodpb/1119A/production/_118524007_bafeaaec-7a2f-47f2-8ec2-7e0ad44dfbb9.jpg",
                      videoh1:
                          "This is Heading of the related new ws this is another")
                ],
              ))
            ],
          )),
    );
  }
}
