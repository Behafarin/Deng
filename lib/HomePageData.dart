
import 'package:flutter/material.dart';

class HomePageData extends StatelessWidget {
  Widget girl1 = Image.asset('images/girl2.jpg');
  Widget boy1 = Image.asset('images/boy2.jpg');
  Widget voice = Image.asset('images/voice1.jpg');
  Widget note = Image.asset('images/note2.jpg');
  Widget note2 = Image.asset('images/note3.jpg');
  Widget band = Image.asset('images/band1.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => print("ciao"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _buildItems(
                      "images/profile5.png",
                      'Keyhan Kalhor',
                      "20 seconds ago",
                      'This is the note of last session class, ask your questions in the comment section below . Have a nice day.',
                      " 11,908,207 comments ",
                      note2,
                      context),
                  _buildItems(
                      "images/profile2.png",
                      'Glare Mhmdkhani',
                      "1 minute ago",
                      'This is the description of this post :) Hope you enjoy',
                      " 1,200 comments ",
                      girl1,
                      context),
                  _buildItems(
                      "images/profile6.png",
                      'Amir Azimi',
                      "12 minutes ago",
                      'In this voice I describe how to hold yoour qiutars',
                      " 5,120 comments ",
                      voice,
                      context),
                  _buildItems(
                      "images/profile7.png",
                      'Sahar Music',
                      " 1 hour ago",
                      'Listen and enjoy  :)',
                      " 5,012,800 comments ",
                      band,
                      context),
                  _buildItems(
                      "images/profile8.png",
                      'Amirali gh',
                      " 8 hours ago",
                      'Piano is the sound of life :)',
                      " 8,752,880 comments ",
                      boy1,
                      context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItems(String profileURl, String username, String time,
      String description, String comments, Widget data, BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Column(children: <Widget>[
        _buildImage(profileURl , username , time),
        data,
        _buildTitle(comments , description, context),
      ]),
    );
  }

  Widget _buildImage(String imageUrl, String username, String time) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
        radius: 25.0,
      ),
      title: Text(username),
      subtitle: Text(time),
      trailing:IconButton(icon: Icon(Icons.more_vert), onPressed: () {}) ,
    );
  }

  Widget _buildTitle(String comment, String description, BuildContext context) {
    return ListTile(
      // leading:IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
      title: Text(description),
      subtitle: Text(comment),
      trailing: IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
    );
  }
}
