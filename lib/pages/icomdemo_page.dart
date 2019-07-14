import 'package:flutter/material.dart';
class IconDemo extends StatefulWidget {
  @override
  _IconDemoState createState() => _IconDemoState();
}

class _IconDemoState extends State<IconDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(width: 5),
        ActionButton(
          title: '相机',
          icon: Icons.camera_alt,
        ),
        ActionButton(
          title: '录音',
          icon: Icons.keyboard_voice,
        ),
        ActionButton(
          title: '对话',
          icon: Icons.save,
        ),
        ActionButton(
          title: '翻译',
          icon: Icons.save_alt,
        ),
        Container(width: 5)
      ],
    );
  }
}

class ActionButton extends StatefulWidget {
  final String  title;
  final IconData icon;
  final AssetImage image;
  ActionButton({Key key, @required this.title, this.icon, this.image}) : super(key : key);
  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Column(
        children: <Widget>[
          _displayIcon(),
          Text(widget.title, style: TextStyle(
            color: Colors.green,
            fontSize: 15.0
          )),
        ],
      ) ,
      onPressed: () {},
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top:2.0, bottom:2.0),
    );
  }
  Widget _displayIcon() {
    if (widget.icon != null) {
      return Icon(
        widget.icon,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    } else if ( widget.image != null){
      return ImageIcon(
        widget.image,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    } else {
      return Container(
        child: Text('data'),
      );
    }
  }
}