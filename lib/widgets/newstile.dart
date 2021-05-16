import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsTile extends StatelessWidget {
  String imgurl;
  String newsh1;
  String newsh2;

  NewsTile(
      {@required this.imgurl, @required this.newsh1, @required this.newsh2});
  @override
  Widget build(BuildContext context) {
    void _mySnackbar() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You just pressed the Sports section.'),
          duration: Duration(milliseconds: 500),
        ),
      );
    }

    final dateToday = DateFormat.yMd().format(DateTime.now()).toString();
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            height: 150,
            width: 122,
            fit: BoxFit.cover,
            image: NetworkImage(imgurl),
          ),
        ),
        Container(
          height: 150,
          width: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  newsh1,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  newsh2,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Icon(Icons.calendar_today),
                    SizedBox(
                      width: 8,
                    ),
                    Text(dateToday),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      height: 20,
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          _mySnackbar();
                        },
                        child: Text('Sports'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Icon(Icons.bookmark_border),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
