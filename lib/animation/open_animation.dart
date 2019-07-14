import 'package:flutter/material.dart';
import '../pages/index_page.dart';

class OpenAnimation extends StatefulWidget {
  @override
  _OpenAnimationState createState() => _OpenAnimationState();
}

class _OpenAnimationState extends State<OpenAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(
        seconds: 1,
      ),
      vsync: this,
    );
    _animation = Tween(begin: 0, end: 1).animate(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return IndexPage();
        }), (route) => route == null);
      }
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeTransition(
        opacity: _controller,
        child: Image.asset(
          'images/Open_animation.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
