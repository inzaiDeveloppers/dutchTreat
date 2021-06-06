import 'package:flutter/material.dart';
// import 'package:ducth
// import 'package:
// import 'package:

class TopPage extends StatefulWidget {
  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
// page index
  int _index = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              this._index = index;
            });
          },
          children: [
            QuestionnaireTop(),
            LoginPage(),
            HomePage(),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          // define animation
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 10), curve: Curves.ease);
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            // call each bottom item
            icon: Icon(Icons.sticky_note_2_outlined),
            label: 'アンケート',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'ログイン',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          )
        ],
      ),
    );
  }
}
