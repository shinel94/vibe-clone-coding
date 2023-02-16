import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
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
