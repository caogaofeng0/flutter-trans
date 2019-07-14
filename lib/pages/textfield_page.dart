import 'package:flutter/material.dart';
import '../pages/icomdemo_page.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(0),
      child: Container(
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextDemo(),
            IconDemo(),
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height - 20,
        padding:
            EdgeInsets.only(left: 18.0, right: 18.0, bottom: 20.0, top: 2.0),
        child: TextField(
          decoration:
              InputDecoration(border: InputBorder.none, hintText: "点按即可输入文本"),
          style: TextStyle(color: Colors.black, fontSize: 25.0),
          maxLines: 999,
          cursorColor: Colors.blue[500],
          cursorWidth: 2.0,
        ),
      ),
    );
  }
}
