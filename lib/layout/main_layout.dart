import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainLayout extends StatefulWidget {
  final Widget child;
  const MainLayout({
    this.child,
    Key key,
  }) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  blurRadius: 11, offset: Offset(0, 4), color: Color(0xffe9eaef)),
            ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.menu),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'News',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: widget.child,
      )
    );
  }
}
