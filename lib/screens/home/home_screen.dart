import 'package:flutter/material.dart';
import 'package:vibe_clone_coding/screens/home/audio_screen.dart';
import 'package:vibe_clone_coding/screens/home/chart_screen.dart';
import 'package:vibe_clone_coding/screens/home/profile_screen.dart';
import 'package:vibe_clone_coding/screens/home/search_screen.dart';
import 'package:vibe_clone_coding/screens/home/today_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selected = 0;

  final _unselectedColor = Colors.white;
  final _selectedColor = Colors.purple.shade300;

  final _bottomNavIconList = const [
    Icons.home,
    Icons.trolley,
    Icons.circle_outlined,
    Icons.search,
    Icons.person_outline,
  ];
  final _bottomNavTextList = const [
    "투데이",
    "차트",
    "오디오",
    "검색",
    "보관함",
  ];

  final _bodyScreen = [
    TodayScreen(),
    ChartScreen(),
    AudioScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: _bodyScreen[_selected],
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < _bottomNavIconList.length; i++)
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selected = i;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        _bottomNavIconList[i],
                        color:
                            i == _selected ? _selectedColor : _unselectedColor,
                      ),
                      Text(
                        _bottomNavTextList[i],
                        style: TextStyle(
                            fontSize: 12,
                            color: i == _selected
                                ? _selectedColor
                                : _unselectedColor),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
