import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Color primaryColor = Colors.blue[500];

class IndexBody extends StatefulWidget {
  IndexBody({Key key}) : super(key : key);
  @override
  _IndexBodyState createState() => _IndexBodyState();
}

class _IndexBodyState extends State<IndexBody> {
  String _firstLanguage = '英语dd';
  String _secondLanguage = "中文(简体)";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey[500]
          )
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(width: 10),
                    Text(
                      this._firstLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    Icon(Icons.arrow_drop_down, color: primaryColor,),
                  ],
                ),
              ),
            ),
          ),
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.compare_arrows),
              onPressed: () {},
              color: primaryColor,
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      this._secondLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}