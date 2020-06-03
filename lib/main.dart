import 'package:flutter/material.dart';
import "./HomePageData.dart";

// clean up code => shift+ alt + f


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harmony Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Harmony Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    //add page for search
    HomePageData(),
    HomePageData(),
    HomePageData(),
    //add profile page
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              AppBar(
                title: Text('Choose'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                title: Text('Faveorite subjects'),
                onTap: () {},
                leading: Icon(Icons.favorite_border),
              ),
              ListTile(
                title: Text('About us'),
                onTap: () {},
                leading: Icon(Icons.info),
              ),
              ListTile(
                title: Text('Feedback'),
                onTap: () {},
                leading: Icon(Icons.receipt),
              ),
              ListTile(
                title: Text('Help'),
                onTap: () {},
                leading: Icon(Icons.help),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          // *******************************************************************************
          title: Text('Harmony'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.inbox), onPressed: () {}),
          ],
        ),

        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey,
          onTap: _bottomNavigationFunction,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('profile'),
            ),
          ],
        ),
      ),
    );
  }


  void _bottomNavigationFunction(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}
