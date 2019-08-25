import 'package:flutter/material.dart';
import 'package:simple_request/get.dart';
import 'package:simple_request/get_collection.dart';
import 'package:simple_request/post.dart';
import 'package:simple_request/post_result_model.dart';

void main() => runApp(MaterialApp(
      title: "Simple Request",
      home: MainMenu(),
    ));

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  PostResult postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("API Demo"),
      ),
      body: Center(
        child:
         Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // button get page
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Material(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.lightBlue,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GetPage()));
                    },
                    borderRadius: BorderRadius.circular(25.0),
                    child: new Center(
                      child: new Text(
                        'Get Sample',
                        style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // button post page
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Material(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.amber,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PostPage()));
                    },
                    borderRadius: BorderRadius.circular(25.0),
                    child: new Center(
                      child: new Text(
                        'Post Sample',
                        style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // button get collection page
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Material(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.lightGreen,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GetCollectionPage()));
                    },
                    borderRadius: BorderRadius.circular(25.0),
                    child: new Center(
                      child: new Text(
                        'Get Collection Sample',
                        style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    ));
  }
}
