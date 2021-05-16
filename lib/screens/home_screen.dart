// import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../widgets/newstile.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeNamed = '/home-screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(21, 38, 5, 1),
          title: Text(''),
        ),
        drawer: AppDrawer(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(
            children: <Widget>[
              NewsTile(
                imgurl:
                    "https://c.ndtvimg.com/2020-10/r5nivleo_pm-modi-invest-india-conference650_625x300_08_October_20.jpg",
                newsh1:
                    "This is Heading of the related \n news which is goinig on",
                newsh2:
                    "This is another Heading of the \n related  news which is going on",
              ),
              SizedBox(
                height: 25,
              ),
              NewsTile(
                imgurl:
                    "https://static.timesofisrael.com/www/uploads/2021/05/000_9A34BN-1-e1621143349316-1024x640.jpg",
                newsh1:
                    "This is Heading of the related \n news which is goinig on",
                newsh2:
                    "This is another Heading of the \n related  news which is going on",
              ),
              SizedBox(
                height: 25,
              ),
              NewsTile(
                imgurl:
                    "https://images.financialexpress.com/2020/03/coronav660.jpg",
                newsh1:
                    "This is Heading of the related \n news which is goinig on",
                newsh2:
                    "This is another Heading of the \n related  news which is going on",
              ),
              SizedBox(
                height: 25,
              ),
              NewsTile(
                imgurl:
                    "https://static.theprint.in/wp-content/uploads/2020/07/football-768x432.jpg",
                newsh1:
                    "This is Heading of the related \n news which is goinig on",
                newsh2:
                    "This is another Heading of the \n related  news which is going on",
              ),
              SizedBox(
                height: 25,
              ),
              NewsTile(
                imgurl:
                    "https://images.financialexpress.com/2021/03/Mamata-Banerjee-Injured1.jpg",
                newsh1:
                    "This is Heading of the related \n news which is goinig on",
                newsh2:
                    "This is another Heading of the \n related  news which is going on",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
