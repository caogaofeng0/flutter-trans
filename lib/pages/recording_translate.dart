import 'package:flutter/material.dart';
import '../const/const_page.dart';

class RecordingTranslate extends StatefulWidget {
  @override
  _RecordingTranslateState createState() => _RecordingTranslateState();
}

class _RecordingTranslateState extends State<RecordingTranslate> {
  List<Translate> _items = [
    Translate('nbc', 'cc', false),
    Translate('cac', 'yy', true),
    Translate('caccc', 'yccy', true),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _displayList(index);
        },
      ),
    );
  }

  Widget _displayList(int index) {
    return Container(
      padding: EdgeInsets.only(top: 2.0, bottom: 2.0, right: 2.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0))),
        margin: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
          height: 80.0,
          child: Row(
            children: <Widget>[
              _flexible(index),
              _collection(index),
            ],
          ),
        ),
      ),
    );
  }

  Widget _flexible(int index) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            _items[index].title,
            style: Theme.of(context).textTheme.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(_items[index].subTitle),
        ],
      ),
    );
  }

  Widget _collection(int index) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        _items[index].isCollection ? Icons.star : Icons.star_border,
        size: 25,
        color: _items[index].isCollection ? Colors.yellow[600] : Colors.grey[700]
      ),
    );
  }
}
