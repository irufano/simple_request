import 'package:flutter/material.dart';
import 'package:simple_request/user_model.dart';

class GetPage extends StatefulWidget {
  @override
  _GetPageState createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple GET"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              ((user != null) ? user.id + " | " + user.name : "Tidak ada data"),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              onPressed: () {
                User.connectToAPI("3").then((value) {
                  user = value;
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
                color: Colors.lightBlue,
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
