import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(
              'data@126.com',
              style: TextStyle(color: Colors.white),
            ),
            accountName: Text('data', style: TextStyle(color: Colors.white)),
            currentAccountPicture: null,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Open_animation.jpg'),
                    fit: BoxFit.cover
                )),
          ),
          ListTile(
            title: Text('首页'),
            leading: Icon(CupertinoIcons.home, color: Colors.red,),
            onTap: () {},
          ),
          ListTile(
            title: Text('翻译收藏夹'),
            leading: Icon(CupertinoIcons.shopping_cart),
            onTap: () {},
          ),
          ListTile(
            title: Text('离线翻译'),
            leading: Icon(CupertinoIcons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('设置'),
            leading: Icon(CupertinoIcons.settings),
            onTap: () {},
          ),
        ],
      )
    );
  }
}
