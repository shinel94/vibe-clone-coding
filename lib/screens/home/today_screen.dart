import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibe_clone_coding/models/today_model.dart';

class TodayScreen extends StatefulWidget {
  TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  final _firstBlockData = firstBlockData;

  List<SecondBlock> _secondBlockData = secondBlockData;

  List<ThirdBlock> _thirdBlockData = thirdBlockData;

  List<ForthBlock> _forthBlockData = forthBlockData;

  List<RecentMusic> _recentMusicData = recentMusicList;

  TextStyle _blockTitleStyle =
      TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700);

  TextStyle _blockTitleButtonStyle = TextStyle(
      fontSize: 12, color: Colors.white60, fontWeight: FontWeight.w500);

  bool isShowInfo = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.heart_broken_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "VIBE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.bell,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "images/avatar.jpg",
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: PageScrollPhysics(),
              itemCount: _firstBlockData.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _firstBlockData[index].title,
                        style: _firstBlockData[index].titleStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        _firstBlockData[index].imgSrc,
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        _firstBlockData[index].contentTitle,
                        style: _firstBlockData[index].contentTitleStyle,
                      ),
                      Text(
                        _firstBlockData[index].contentSubTitle,
                        style: _firstBlockData[index].contentSubTitleStyle,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "나를 위한 믹스테잎",
                  style: _blockTitleStyle,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "더보기",
                    style: _blockTitleButtonStyle,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _secondBlockData.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 160,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: _secondBlockData[index].bgColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _secondBlockData[index].title,
                        style: _blockTitleStyle,
                      ),
                      Text(
                        "MIX",
                        style: _blockTitleButtonStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Icon(
                          _secondBlockData[index].blockIcon,
                          size: 80,
                          color: _secondBlockData[index].iconBgColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        _secondBlockData[index].singerList.join(", "),
                        maxLines: 2,
                        style: _secondBlockData[index].singerListTextStyle,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "베일에 싸인 천재 디자이너 전시",
                  style: _blockTitleStyle,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "더보기",
                    style: _blockTitleButtonStyle,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _thirdBlockData.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 180,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        width: 180,
                        height: 230,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    _thirdBlockData[index].bgImgSrc))),
                      ),
                      Container(
                          height: 230,
                          width: 180,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Colors.grey.withOpacity(0),
                                Colors.grey.withOpacity(0),
                                Colors.grey.withOpacity(0),
                                Colors.grey,
                                Colors.grey,
                              ],
                                  stops: [
                                0.0,
                                0.25,
                                0.7,
                                0.9,
                                1.0
                              ]))),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _thirdBlockData[index].title,
                              style: _thirdBlockData[index].contentTitleStyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              _thirdBlockData[index].subTitle,
                              style:
                                  _thirdBlockData[index].contentSubTitleStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "우리 취향이 만나는 곳, 파티룸",
                  style: _blockTitleStyle,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "더보기",
                    style: _blockTitleButtonStyle,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 160,
            child: ListView.builder(
              itemCount: _forthBlockData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: _forthBlockData[index].bgColor,
                      borderRadius: BorderRadius.circular(8)),
                  width: 260,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.music_note_outlined,
                            color: Colors.white38,
                            size: 18,
                          ),
                          Text(
                            _forthBlockData[index].title,
                            style: _forthBlockData[index].titleStyle,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        _forthBlockData[index].content,
                        style: _forthBlockData[index].contentStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      Container(
                        height: 25,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    _forthBlockData[index].userAvatarSrc),
                              ),
                            ),
                            Text(
                              _forthBlockData[index].userName,
                              style: _forthBlockData[index].userInfoStyle,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 3,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white60),
                            ),
                            Icon(
                              Icons.person,
                              color: Colors.white60,
                              size: 15,
                            ),
                            Text(
                              _forthBlockData[index].userNumber.toString(),
                              style: _forthBlockData[index].userInfoStyle,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "최근 들은 노래",
                  style: _blockTitleStyle,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "더보기",
                    style: _blockTitleButtonStyle,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              physics: PageScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 70,
                  mainAxisExtent: MediaQuery.of(context).size.width * 0.9),
              itemCount: _recentMusicData.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    _recentMusicData[index].albumImgSrc))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _recentMusicData[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(_recentMusicData[index].singer,
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 12,
                              ))
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isShowInfo = !isShowInfo;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "(주) 네이버 사업자 정보",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    isShowInfo
                        ? Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white60,
                          )
                        : Icon(Icons.keyboard_arrow_down, color: Colors.white60)
                  ],
                ),
              ),
              isShowInfo
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < corpInfoList.length; i++)
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 2),
                              child: Row(
                                children: [
                                  Text(
                                    corpInfoList[i].label,
                                    style: corpInfoList[i].labelStyle,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    corpInfoList[i].content,
                                    style: corpInfoList[i].contentStyle,
                                  ),
                                ],
                              ),
                            ),
                          Text(
                            "사업자 정보 확인",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    )
                  : Container(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "개인정보 처리방침",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white60,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "오류 신고 및 결제 관련 문제해결",
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "고객센터",
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                    Text(
                      "톡톡상담",
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                    Text(
                      "네이버 이용약관",
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                    Text(
                      "VIBE 이용약관",
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.center,
                child: Text(
                  "ⓒ NAVER Corp.",
                  style: TextStyle(color: Colors.white60),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
