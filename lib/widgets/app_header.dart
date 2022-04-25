import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final mainColor;

  AppHeader(this.mainColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        top: 30,
        right: 30,
      ),
      child: ListTile(
        leading: ClipOval(
            child: Image.network(
                'https://avatars.githubusercontent.com/u/5081804?v=4', // replace if you want
                width: 50,
                height: 50,
                fit: BoxFit.cover)),
        title: Text('Hello, Roman',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        subtitle: Text('Good morning',
            style: TextStyle(color: mainColor, fontSize: 12)),
      ),
    );
  }
}
