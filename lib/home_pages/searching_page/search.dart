import 'package:flutter/material.dart';
import 'package:flutter_text_application/home_pages/searching_page/search-screen.dart';

class search_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _search_PageState();
}

class _search_PageState extends State<search_Page> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FirstPage(),
    );
  }
}
