import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "./HomePageData.dart";

class MasterProfile extends StatefulWidget {
  @override
  _MasterProfileState createState() => _MasterProfileState();
}

class _MasterProfileState extends State<MasterProfile> {
  Widget cocoNote = Image.asset('images/CocoNote.png');
  Widget learnPiano = Image.asset('images/Learn-Piano.jpg');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/Master.jpg'),
                      radius: 60.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5.0),
                              child: Text(
                                '10',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Text(
                              'following',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black45
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5.0),
                              child: Text(
                                '15k',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Text(
                              'followers',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black45
                              ),
                            )
                          ],
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text(
                            'Edit Profile',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'SourceSans',
                              fontSize: 20.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  'Nader Mashayekhi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    fontFamily: 'SourceSans'
                  ),
                ),
                Text(
                  'Persian composer and conductor of the Tehran Symphony Orchestra',
//                   maxLines: 2,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                TabBar(
                  tabs: <Widget>[
                    Tab(child: Text(
                      'Posts',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SourceSans',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                    Tab(child: Text(
                      'Courses',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SourceSans',
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      ListView(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              _buildItems(
                                  "images/Master.jpg",
                                  'Nader Mashayekhi',
                                  "20 seconds ago",
                                  'This is the note of last session class, ask your questions in the comment section below . Have a nice day.',
                                  " 6,207 comments ",
                                  cocoNote,
                                  context),
                            ],
                          ),
                        ],
                      ),
                      ListView(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              _buildItems(
                                  "images/Master.jpg",
                                  'Nader Mashayekhi',
                                  "7 days ago",
                                  'Full Piano Course',
                                  " 207 comments ",
                                  learnPiano,
                                  context),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
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
  Color _iconColor = Colors.white;
  return ListTile(
    // leading:IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
    title: Text(description),
    subtitle: Text(comment),
    trailing: FavIcon()
  );
}

class FavIcon extends StatefulWidget {
  @override
  _FavIconState createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  Color _iconColor = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite, color: _iconColor),
      onPressed: () {
        setState(() {
          if (_iconColor == Colors.red) {
            _iconColor = Colors.blueGrey;
          }
          else {
            _iconColor = Colors.red;
          }
        });
      },
    );
  }
}


