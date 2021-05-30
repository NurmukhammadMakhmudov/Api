import 'package:customappbar/layout/main_layout.dart';
import 'package:customappbar/screens/article.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CustomAppbar());
}

class CustomAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArticleScreen(),
    );
  }


}



