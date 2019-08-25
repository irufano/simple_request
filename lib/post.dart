import 'package:flutter/material.dart';
import 'package:simple_request/post_result_model.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  PostResult postResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple POST"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text((postResult != null)
                ? postResult.id +
                    " | " +
                    postResult.name +
                    " | " +
                    postResult.job +
                    " | " +
                    postResult.created
                : "Tidak ada data"),
            RaisedButton(
              onPressed: () {
                PostResult.connectToAPI("irufano", "Developer").then((value) {
                  postResult = value;
                  setState(() {});
                });
              },
              child: Text("POST"),
            ),
            Container(
              height: 50,
              width: 200,
              child: Material(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.amber,
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
