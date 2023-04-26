import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildMyAppBar(BuildContext context, String title) {
  final back_icon = CupertinoIcons.home;
  final notif_icon = CupertinoIcons.bell_fill;

  return AppBar(
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
    leading: IconButton(
      icon: Icon(back_icon),
      color: Color.fromARGB(255, 207, 83, 38),
      iconSize: 28.0,
      onPressed: () {
        // Navigator.pop(context);
      //  Navigator.of(context).pop();
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(
          notif_icon,
          color: Color.fromARGB(255, 207, 83, 38),
        ),
        color: Colors.blue,
        iconSize: 28.0,
        onPressed: () {},
      ),
    ],
  );
}
