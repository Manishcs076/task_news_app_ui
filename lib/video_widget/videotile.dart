import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VideoTile extends StatelessWidget {
  String videourl;
  String videoh1;

  VideoTile({@required this.videourl, @required this.videoh1});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListTile(
          leading: Image.network(videourl),
          title: Text(
            videoh1,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 18,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  DateTime.now().day.toString() +
                      "-" +
                      DateTime.now().month.toString() +
                      "-" +
                      DateTime.now().year.toString(),
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Info",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
