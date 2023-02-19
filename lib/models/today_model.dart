import 'package:flutter/material.dart';

class FirstBlock {
  String title;
  String imgSrc;
  String contentTitle;
  String contentSubTitle;
  TextStyle titleStyle = const TextStyle(
      color: Colors.redAccent, fontSize: 16, fontWeight: FontWeight.w900);
  TextStyle contentTitleStyle = const TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700);
  TextStyle contentSubTitleStyle = const TextStyle(
      color: Colors.white60, fontSize: 12, fontWeight: FontWeight.w500);

  FirstBlock(
      {required this.title,
      required this.imgSrc,
      required this.contentTitle,
      required this.contentSubTitle});
}

List<FirstBlock> firstBlockData = [
  FirstBlock(
      title: "나만 SOLO",
      imgSrc: "images/today_screen/f1.jpg",
      contentTitle: "사랑할 용기가 없을 때",
      contentSubTitle: "지난 사랑의 상처가 아직 다 아물지 않았다면"),
  FirstBlock(
      title: "새 앨범",
      imgSrc: "images/today_screen/f2.jpg",
      contentTitle: "All Time Low:Modern Love",
      contentSubTitle: "한 주 동안 쌓였던 스트레스를 날려버릴 신나는 락"),
  FirstBlock(
      title: "#Docent",
      imgSrc: "images/today_screen/f3.jpg",
      contentTitle: "고대 이집트인들의 삶을 만나다",
      contentSubTitle: "VIBE 오디오와 함께, 이집트 미라전"),
  FirstBlock(
      title: "VIBE 번역가사와 함께",
      imgSrc: "images/today_screen/f4.jpg",
      contentTitle: "번역가사로 즐기는 팝 같은 드라마 OST",
      contentSubTitle: "인기 드라마 OST 가사의 의미가 궁금하다면??"),
  FirstBlock(
      title: "이 노래 어때?",
      imgSrc: "images/today_screen/f5.jpg",
      contentTitle: "요즘이곡",
      contentSubTitle: "요즘 뜨고 있는 노래를 완벽히 정복해 봐"),
  FirstBlock(
      title: "Today's HOT",
      imgSrc: "images/today_screen/f6.jpg",
      contentTitle: "해외 급상승",
      contentSubTitle: "지금 뜨고 있는 해외곡을 확인해봐"),
];

String SecondBlockTitle = "나를 위한 믹스테잎";

class SecondBlock {
  String title;
  List<String> singerList;
  IconData blockIcon;
  Color bgColor;
  Color iconBgColor;

  TextStyle singerListTextStyle = const TextStyle(
      color: Colors.white60, fontSize: 12, fontWeight: FontWeight.w500);

  SecondBlock(
      {required this.title,
      required this.singerList,
      required this.blockIcon,
      required this.bgColor,
      required this.iconBgColor});
}

List<SecondBlock> secondBlockData = [
  SecondBlock(
      title: "발라드",
      singerList: ["신시아", "IZ*ONE", "윤원", "정동원", "소낙별"],
      blockIcon: Icons.face_5_outlined,
      bgColor: Colors.green,
      iconBgColor: Colors.green.shade200),
  SecondBlock(
      title: "인디",
      singerList: ["밍기뉴", "설", "Kid Wine", "너드커넥션", "박소은"],
      blockIcon: Icons.ac_unit,
      bgColor: Colors.purple,
      iconBgColor: Colors.purple.shade200),
  SecondBlock(
      title: "첨듣 두둠칫",
      singerList: ["Loote", "Haywood", "Petey Martin", "윤누구", "찬주"],
      blockIcon: Icons.back_hand_outlined,
      bgColor: Colors.blueGrey,
      iconBgColor: Colors.blueGrey.shade200),
  SecondBlock(
      title: "새노래",
      singerList: ["이승윤", "안예은", "원위", "과나", "DISH//"],
      blockIcon: Icons.cake_outlined,
      bgColor: Colors.indigo,
      iconBgColor: Colors.indigo.shade200),
  SecondBlock(
      title: "아티스트",
      singerList: [
        "Kessoku Band(결속밴드)",
        "Eve",
        "Ado",
        "mona (CV:Shiina Natsukawa)",
        "Ruokusoushoku Shakai"
      ],
      blockIcon: Icons.eco_outlined,
      bgColor: Colors.lightGreen,
      iconBgColor: Colors.lightGreen.shade200),
  SecondBlock(
      title: "첨듯 잔잔",
      singerList: ["그냥노창", "으네", "DAUL", "Effie", "김푸름"],
      blockIcon: Icons.golf_course_outlined,
      bgColor: Colors.teal,
      iconBgColor: Colors.teal.shade200),
  SecondBlock(
      title: "최애",
      singerList: ["Yuika", "밍기뉴", "분리수거밴드(BLSG)", "Yorushika", "육중완밴드"],
      blockIcon: Icons.join_inner_outlined,
      bgColor: Colors.deepPurple,
      iconBgColor: Colors.deepPurple.shade200),
  SecondBlock(
      title: "두둠칫",
      singerList: ["LUCY", "Kessoku Band(결속밴드)", "실리카겔", "드림캐쳐", "소년:달"],
      blockIcon: Icons.paid_outlined,
      bgColor: Colors.orange,
      iconBgColor: Colors.orange.shade200),
];

class ThirdBlock {
  String title;
  String subTitle;
  String bgImgSrc;

  TextStyle contentTitleStyle = const TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w900);
  TextStyle contentSubTitleStyle = const TextStyle(
      color: Colors.white60, fontSize: 10, fontWeight: FontWeight.w500);

  ThirdBlock(
      {required this.title, required this.subTitle, required this.bgImgSrc});
}

List<ThirdBlock> thirdBlockData = [
  ThirdBlock(
      title: "시대를 앞서간 마르지엘라의 예술 속으로!",
      subTitle: "도슨트",
      bgImgSrc: "images/today_screen/t1.jpg"),
  ThirdBlock(
      title: "마틴 마르지엘라는 누구일까?",
      subTitle: "도슨트",
      bgImgSrc: "images/today_screen/t2.jpg"),
  ThirdBlock(
      title: "1. 데오도란트, 2022-20222",
      subTitle: "도슨트",
      bgImgSrc: "images/today_screen/t3.jpg"),
  ThirdBlock(
      title: "2. 헤어 포트레이츠, 2015-2022",
      subTitle: "도슨트",
      bgImgSrc: "images/today_screen/t4.jpg"),
  ThirdBlock(
      title: "3. 팬텀 시리즈, 2021",
      subTitle: "도슨트",
      bgImgSrc: "images/today_screen/t5.jpg"),
];

class ForthBlock {
  String title;
  String content;
  String userName;
  String userAvatarSrc;
  int userNumber;
  Color bgColor;

  TextStyle titleStyle = const TextStyle(
      color: Colors.white38, fontSize: 12, fontWeight: FontWeight.w500);

  TextStyle userInfoStyle = const TextStyle(
      color: Colors.white60, fontSize: 12, fontWeight: FontWeight.w500);
  TextStyle contentStyle = const TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700);

  ForthBlock(
      {required this.title,
      required this.content,
      required this.userName,
      required this.userAvatarSrc,
      required this.userNumber,
      required this.bgColor});
}

List<ForthBlock> forthBlockData = [
  ForthBlock(
      title: "Only One - 보아(BoA)",
      content: "어..이노래!?듣는순간\"좋아요\"누르게 되는 노래 :)",
      userName: "빤디",
      userAvatarSrc: "images/today_screen/avatar.png",
      userNumber: 81,
      bgColor: Colors.blueGrey.shade800),
  ForthBlock(
      title: "비오니까 - 싸이(Psy)",
      content: "세월이 흘러도 기억되는 숨은 띵곡 발라드~♥",
      userName: "지니",
      userAvatarSrc: "images/today_screen/avatar.png",
      userNumber: 27,
      bgColor: Colors.deepPurple.shade800),
  ForthBlock(
      title: "사랑하나 봐 - XIA(준수)",
      content: "5인분=곱창4 당면2 계란찜4 볶음밥3 순대2 맥4소2",
      userName: "김준수사랑해서요♡",
      userAvatarSrc: "images/today_screen/avatar.png",
      userNumber: 16,
      bgColor: Colors.black87),
  ForthBlock(
      title: "해피엔딩 - 피아노 앤(Piano Ann)",
      content: "24시간 호텔 라운지 카페 음악 피아노",
      userName: "MusicTi",
      userAvatarSrc: "images/today_screen/avatar.png",
      userNumber: 13,
      bgColor: Colors.green.shade700),
  ForthBlock(
      title: "쓰담쓰담 - 10CM",
      content: "코 품격 음악방송, 오전 9시 ...",
      userName: "뮤지탈",
      userAvatarSrc: "images/today_screen/avatar.png",
      userNumber: 6,
      bgColor: Colors.brown.shade800),
  ForthBlock(
      title: "Bloody Mary - Lady Gaga",
      content: "내 방의 소심한 숨듣명",
      userName: "BYMS",
      userAvatarSrc: "images/today_screen/avatar.png",
      userNumber: 1,
      bgColor: Colors.indigo.shade700),
];

class CorpInfo {
  String label;
  String content;
  TextStyle labelStyle = TextStyle(color: Colors.white24, fontSize: 12);
  TextStyle contentStyle = TextStyle(color: Colors.white60, fontSize: 12);

  CorpInfo({required this.label, required this.content});
}

List<CorpInfo> corpInfoList = [
  CorpInfo(label: "대표이사", content: "최수연"),
  CorpInfo(label: "사업자등록번호", content: "220-81-62517"),
  CorpInfo(label: "통신판매업신고번호", content: "제2006-경기성남-0692호"),
  CorpInfo(label: "주소", content: "경기도 성남시 분당구 정자일로 95, NAVER 1784, 13561"),
  CorpInfo(label: "대표전회", content: "1588-3820"),
  CorpInfo(label: "이메일", content: "conaver@naver.com"),
  CorpInfo(label: "호스팅 서비스 제공", content: "NAVER Cloud"),
];

class RecentMusic {
  String title;
  String singer;
  String albumImgSrc;

  RecentMusic(
      {required this.title, required this.singer, required this.albumImgSrc});
}

List<RecentMusic> recentMusicList = [
  RecentMusic(
      title: "나만 아는 세상",
      singer: "오늘의 날씨는",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "내가 널 처음 봤을 때",
      singer: "중식이",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "Go Back",
      singer: "Jacki Wai",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "구름 한 점이나",
      singer: "이승윤",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "열기구",
      singer: "SURL (설)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "나의 모든 이들에게,",
      singer: "Mingginyu(밍기뉴)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "불시",
      singer: "터치드(Touched)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "페스티벌",
      singer: "보수동쿨러, 해서웨이(hathaw9y)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "내맘이야",
      singer: "씩제픔(Sick Jeff)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "요즘따라",
      singer: "분리수거밴드(BLSG)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "물고기",
      singer: "백예린(Yerin Baek)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "슈가베리믹스(Feat. 모한(Mohan))",
      singer: "소년:달",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "ROCKSTAR",
      singer: "이한울",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "그네", singer: "버둥", albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "모기",
      singer: "극동아시아타이거즈",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "은빛의 시간",
      singer: "XYNSIA(신시아)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "Colors of",
      singer: "문없는집",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "우주선", singer: "백야", albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "대학원생",
      singer: "윤대영, 황희범, 처리(Churry)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "어디든지 (feat. 이소정)",
      singer: "LAS(라스)",
      albumImgSrc: "images/today_screen/albun.jpg"),
  RecentMusic(
      title: "그게 뭐 어떄서요",
      singer: "유하정",
      albumImgSrc: "images/today_screen/albun.jpg"),
];
