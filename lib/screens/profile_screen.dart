import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import '../widgets/app_drawer.dart';

class ProfileScreen extends StatelessWidget {
  static const routeNamed = '/profile-screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(21, 38, 5, 1),
          title: Text(''),
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                child: CircularProfileAvatar(
                  'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png',
                  elevation: 5.5,
                  backgroundColor: Colors.indigo[400],
                  borderColor: Colors.red[600],
                  borderWidth: 2,
                  radius: 50,
                ),
              ),
              Text(
                'Dinesh yaduvanshi',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              OutlinedButton(
                child: Text(
                  'Edit Profile',
                  style: (TextStyle(
                    color: Colors.red,
                  )),
                ),
                onPressed: () {},
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: ListView(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Location',
                                hintText:
                                    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxx',
                                labelStyle: TextStyle(color: Colors.black45),
                              ),
                              maxLines: 2,
                              keyboardType: TextInputType.multiline,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'PinCode',
                                hintText: 'xxxxxx',
                                labelStyle: TextStyle(color: Colors.black45),
                              ),
                              maxLength: 6,
                              keyboardType: TextInputType.number,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Date of Birth',
                                hintText: 'dd-mm-yy',
                                labelStyle: TextStyle(color: Colors.black45),
                              ),
                              keyboardType: TextInputType.datetime,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Gender',
                                hintText: 'Male',
                                labelStyle: TextStyle(color: Colors.black45),
                              ),
                              keyboardType: TextInputType.text,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixText: '+91-',
                                labelText: 'Whatsapp',
                                hintText: 'xxxxxxxxxx',
                                labelStyle: TextStyle(color: Colors.black45),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'xxxxxxxxxx.@gmail.com',
                                labelStyle: TextStyle(color: Colors.black45),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
