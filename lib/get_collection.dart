import 'package:flutter/material.dart';
import 'package:simple_request/user_model.dart';

class GetCollectionPage extends StatefulWidget {
  @override
  _GetCollectionPageState createState() => _GetCollectionPageState();
}

class _GetCollectionPageState extends State<GetCollectionPage> {
  String output = "No Data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple GET Collection"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text(
                output,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                User.getUsers("2").then((users) {
                  output = "";
                  for (int i = 0; i < users.length; i++) {
                    output = output + "[ " + users[i].name + " ] \n";
                  }
                  setState(() {});
                });
              },
              child: Text("GET"),
            ),
            Container(
              height: 50,
              width: 200,
              child: Material(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.lightGreen,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(25.0),
                  child: new Center(
                    child: new Text(
                      'Back to Main Menu',
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
          ],
        ),
      ),
    );
  }
}
