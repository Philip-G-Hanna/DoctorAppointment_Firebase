import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  String title;
  TopBar(this.title);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('${this.widget.title}'),
        elevation: 0.0,
        backgroundColor: Color(0xFF00abff),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.notifications_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/notify');
              },
            ),
          ),
        ]);
  }
}
