import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'Package:flutter_swiper/flutter_swiper.dart';

import 'package:story/loginpage/login_page.dart';
import 'package:story/mainpage/modul.dart';
import 'package:story/mainpage/settingpage.dart';
import 'package:story/mainpage/alarmpage.dart';
import 'package:url_launcher/url_launcher.dart';

final mainImg = [
  'imag/test1.jpg',
  'imag/test2.jpg',
  'imag/test3.jpg',
  'imag/test4.jpg',
  'imag/test5.jpg',
];

final imgList = [
  'https://www.yolo-japan.com/assets/images/top/key-visual6-pc.webp',
  'https://www.yolo-japan.com/assets/images/top/key-visual4-pc.webp',
  'https://www.yolo-japan.com/assets/images/top/key-visual5-pc.webp'
];



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 10,
            ),
            child: Container(
              height: 25,
              child: InkWell(
                onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));},
                child: Image.asset(
                  'imag/main_logo.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          iconTheme: IconThemeData(
            size: 30,
            color: Colors.grey[600],
          ),
          elevation: 0,
        ),
        endDrawer: drawer_Setting(),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              child: Swiper(
                duration: 2000,
                autoplay: true,
                autoplayDelay: 6000,
                autoplayDisableOnInteraction: true,
                itemCount: imgList.length,
                itemBuilder: (BuildContext contest, int index) {
                  return Stack(
                    children: [
                      Image.network(
                        imgList[index],
                        fit: BoxFit.cover,
                        height: 180,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '외국인 대상 구인 정보',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '아르바이트 정사원',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 210,
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.magnifyingGlass,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '지역 및 태그 등의 조건 추가',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.redAccent,
                                  padding: const EdgeInsets.all(1.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.redAccent,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 20,
                      child: Center(
                          child: Text(
                        'PICKUP',
                        style: TextStyle(fontSize: 11, color: Colors.redAccent),
                      )),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('최고 10,000엔 선물? 자기 소개 도영상 촬영 캠페인',
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.redAccent,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 20,
                      child: Center(
                          child: Text(
                        'PICKUP',
                        style: TextStyle(fontSize: 11, color: Colors.redAccent),
                      )),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("주로★YORO JAPAN의 구인 검색 방법이 진화했습니다.",
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: NetworkImage(
                              'https://www.yolo-japan.com/assets/top/img/banner/work/n1n2_sp_ko.png?v202210031830'),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: NetworkImage(
                              'https://www.yolo-japan.com/assets/top/img/banner/work/fulltime_pc_ko.png?v202210031830'),
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'imag/fire.png',
                            width: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '인기 급상승',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,color: Colors.grey),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.grey,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Swiper(
                    duration: 2000,
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomLeft,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.grey,activeColor: Colors.redAccent,size: 4,activeSize: 7
                      ),
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext contest, int index) {
                      return Container(
                        width: double.infinity,
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 24, left: 24, top: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: double.infinity,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image.network(
                                        'https://uploads.yolo-japan.com/cache/part_time_file_500/6859/9b83990d962aa6ae7ac12dae64168b43.JPG',
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Expanded(flex: 4, child: Text('')),
                                        Expanded(
                                            flex: 6,
                                            child: Container(
                                              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),color: Colors.white),
                                              width: double.infinity,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('【일본인 초심자 OK☆】쉐어하우스 청소 【기숙사 있음】【세타가야 지역】',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.grey),),
                                                    SizedBox(height: 10,),
                                                    Row(
                                                      children: [
                                                        FaIcon(FontAwesomeIcons.briefcase,size: 9, color: Colors.grey,),
                                                        SizedBox(width: 5,),
                                                        Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                            '가벼운 작업 빌딩 청소'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(FontAwesomeIcons.yenSign,size: 9, color: Colors.grey,),
                                                        SizedBox(width: 5,),
                                                        Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                            '시급 ¥1,100 ～ ¥1,375 '),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(FontAwesomeIcons.locationDot,size: 9, color: Colors.grey,),
                                                        SizedBox(width: 5,),
                                                        Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                            'Shibuya / Tokyo　渋谷 / 東京都'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(FontAwesomeIcons.solidComments,size: 9, color: Colors.grey,),
                                                        SizedBox(width: 5,),
                                                        Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                            '일상 회화 수준 (N3 상당)'),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                height: double.infinity,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                      child: Image.network(
                                        'https://uploads.yolo-japan.com/cache/part_time_file_500/6858/74e583ddb1e5c4e808a76411fe7956a0.jpg',
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Expanded(flex: 4, child: Text('')),
                                        Expanded(
                                            flex: 6,
                                            child: Container(
                                              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),color: Colors.white),
                                              width: double.infinity,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('【일본인 초심자 OK☆】쉐어하우스 청소 【기숙사 있음】【세타가야 지역】',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.grey),),
                                                    SizedBox(height: 10,),
                                                    Row(
                                                      children: [
                                                        FaIcon(FontAwesomeIcons.briefcase,size: 9, color: Colors.grey,),
                                                        SizedBox(width: 5,),
                                                        Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                            '가벼운 작업 빌딩 청소'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(FontAwesomeIcons.yenSign,size: 9, color: Colors.grey,),
                                                        SizedBox(width: 5,),
                                                        Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                            '시급 ¥1,100 ～ ¥1,375 '),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(FontAwesomeIcons.locationDot,size: 9, color: Colors.grey,),
                                                        SizedBox(width: 5,),
                                                        Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                            'Shibuya / Tokyo　渋谷 / 東京都'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(FontAwesomeIcons.solidComments,size: 9, color: Colors.grey,),
                                                        SizedBox(width: 5,),
                                                        Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                            '일상 회화 수준 (N3 상당)'),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.redAccent,
                        Colors.orangeAccent,
                      ],
                    )),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.indeterminate_check_box,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '대인기! 단기 아르바이트 ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'Details',
                                    style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 220,
                      child: Swiper(
                        duration: 2000,
                        pagination: SwiperPagination(
                          alignment: Alignment.bottomLeft,
                          builder: DotSwiperPaginationBuilder(
                              color: Colors.grey,activeColor: Colors.orange,size: 4,activeSize: 7
                          ),
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext contest, int index) {
                          return Container(
                            width: double.infinity,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 24, left: 24, top: 7, bottom: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                          child: Image.network(
                                            'https://www.yolo-japan.com/uploads/monitorOnline/500_228_358de1c5ccf4fcf2d8951c603f382339.png',
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Expanded(flex: 4, child: Text('')),
                                            Expanded(
                                                flex: 6,
                                                child: Container(
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),color: Colors.white),
                                                  width: double.infinity,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text('【최대 10,000엔 GET!] 영주자 · 정주자 · 배우자...',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.grey),),
                                                        SizedBox(height: 15,),
                                                        Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.yenSign,size: 9, color: Colors.grey,),
                                                            SizedBox(width: 5,),
                                                            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                                '10,000'),
                                                          ],
                                                        ),
                                                        SizedBox(height: 2,),
                                                        Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.clock,size: 9, color: Colors.grey,),
                                                            SizedBox(width: 5,),
                                                            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                                '2022/09/28 ～ 2022/10/31'),
                                                          ],
                                                        ),
                                                        SizedBox(height: 2,),
                                                        Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.users,size: 9, color: Colors.grey,),
                                                            SizedBox(width: 5,),
                                                            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                                '11'),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: double.infinity,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                          child: Image.network(
                                            'https://www.yolo-japan.com/uploads/monitorOnline/500_227_bbf1a5c746c3b0b3e57d256ed82b7641.png',
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Expanded(flex: 4, child: Text('')),
                                            Expanded(
                                                flex: 6,
                                                child: Container(
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),color: Colors.white),
                                                  width: double.infinity,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text('【최대 10,000엔 GET!] 영주자 · 정주자 · 배우자...',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.grey),),
                                                        SizedBox(height: 10,),
                                                        Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.yenSign,size: 9, color: Colors.grey,),
                                                            SizedBox(width: 5,),
                                                            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                                '10,000'),
                                                          ],
                                                        ),
                                                        SizedBox(height: 2),
                                                        Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.clock,size: 9, color: Colors.grey,),
                                                            SizedBox(width: 5,),
                                                            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                                '2022/09/28 ～ 2022/10/31'),
                                                          ],
                                                        ),
                                                        SizedBox(height: 2,),
                                                        Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.users,size: 9, color: Colors.grey,),
                                                            SizedBox(width: 5,),
                                                            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                                '11'),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.grey[300],
                child: Image.network(
                  'https://www.yolo-japan.com/assets/top/img/banner/webp/yolocard_top_ko.webp?v202210031830',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.grey[300],
                child: Image.network(
                  'https://www.yolo-japan.com/assets/yolohome/img/banner/webp/top_ko.webp?v202210031830',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.grey[700],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '집을 찾아 보세요',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[700],fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,color: Colors.grey[700]),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.grey[700],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 210,
                  child: Swiper(
                    duration: 2000,
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomLeft,
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.grey,activeColor: Colors.redAccent,size: 4,activeSize: 7
                      ),
                    ),

                    itemCount: 4,
                    itemBuilder: (BuildContext contest, int index) {
                      return Container(
                        width: double.infinity,
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 24, left: 24, top: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: double.infinity,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                      child: Image.network(
                                        'https://uploads.home.yolo-japan.com/images/properties/media/862010_8.jpg',
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Expanded(flex: 4, child: Text('')),
                                        Expanded(
                                            flex: 6,
                                            child: Container(
                                              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),color: Colors.white),
                                              width: double.infinity,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('카나가와현',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.grey),),
                                                    SizedBox(height: 15,),
                                                    
                                                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                        '¥52,000 / 월 '),
                                                    SizedBox(height: 2,),
                                                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                        '관리비：￥5,000'),
                                                    SizedBox(height: 2,),
                                                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                        '1K / 1층 / 21.4m²'),
                                                    SizedBox(height: 2,),
                                                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                        'JR東海道本線　藤沢　도보 7분'),
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                height: double.infinity,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                      child: Image.network(
                                        'https://uploads.home.yolo-japan.com/images/properties/media/810343_10.jpg',
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Expanded(flex: 4, child: Text('')),
                                        Expanded(
                                            flex: 6,
                                            child: Container(
                                              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),color: Colors.white),
                                              width: double.infinity,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('카나가와현',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.grey),),
                                                    SizedBox(height: 15,),

                                                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                        '¥52,000 / 월 '),
                                                    SizedBox(height: 2,),
                                                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                        '관리비：￥5,000'),
                                                    SizedBox(height: 2,),
                                                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                        '1K / 1층 / 21.4m²'),
                                                    SizedBox(height: 2,),
                                                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey),
                                                        'JR東海道本線　藤沢　도보 7분'),
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.redAccent,
                        Colors.orangeAccent,
                      ],
                    )),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '픽업 특집',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'Details',
                                    style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  'https://uploads.yolo-japan.com/cache/feature_page_file_1000/137/3c91205998608b4e6ed077d0be314f85.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '유학생 구인',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  'https://uploads.yolo-japan.com/cache/feature_page_file_1000/143/ffc7a2f1d1ffce16597cfb98ac392e66.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '비자 지원 구인',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  'https://uploads.yolo-japan.com/cache/feature_page_file_1000/144/3510edd1c2902789ed79b20ef1b68aa4.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '풀 타임 구인',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  'https://uploads.yolo-japan.com/cache/feature_page_file_1000/131/633b1270092a1f529851e9ad22e9a5d4.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '도쿄x실내 구인',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.indeterminate_check_box,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '서비스',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.simCard,
                                      size: 18,
                                      color: Colors.redAccent,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'SIM 카드',
                                      style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,fontSize: 13),
                                    ),
                                    Text(
                                      '(Click)',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              flex: 10,
                            ),
                            Expanded(
                              child: Text(''),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.clipboardList,
                                      size: 18,
                                      color: Colors.redAccent,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '문진표 작성',
                                      style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,fontSize: 13),
                                    ),
                                    Text(
                                      '(Click)',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              flex: 10,
                            ),
                            Expanded(
                              child: Text(''),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.hotel,
                                      size: 18,
                                      color: Colors.redAccent,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '숙박하기',
                                      style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,fontSize: 13),
                                    ),
                                    Text(
                                      '(Click)',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              flex: 10,
                            ),
                            Expanded(
                              child: Text(''),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.creditCard,
                                      size: 18,
                                      color: Colors.redAccent,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '선불식 카드',
                                      style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,fontSize: 13),
                                    ),
                                    Text(
                                      '(Click)',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              flex: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.indeterminate_check_box,
                            color: Colors.grey[700],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '정보',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(decoration:TextDecoration.lineThrough,decorationThickness: 3,color: Colors.grey[700]),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.grey[700],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 220,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('최고 10,000엔 선물!? 자기 소개 동영상 촬영 캠페인★'),
                                Text(
                                  '2022.09.08',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.pink[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('최고 10,000엔 선물!? 자기 소개 동영상 촬영 캠페인★'),
                                Text(
                                  '2022.09.08',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('최고 10,000엔 선물!? 자기 소개 동영상 촬영 캠페인★'),
                                Text(
                                  '2022.09.08',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.pink[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('최고 10,000엔 선물!? 자기 소개 동영상 촬영 캠페인★'),
                                Text(
                                  '2022.09.08',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: NetworkImage(
                              'https://www.yolo-japan.com/assets/service/img/foods/top_bnr/topbnr_ko.png?v202210031830'),
                          fit: BoxFit.fill,
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: NetworkImage(
                              'https://www.yolo-japan.com/assets/service/img/home_appliances/bnr/ko/top_bnr_pc.png?v202210031830'),
                          fit: BoxFit.fill,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 5,
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: null,
                            child: Ink.image(
                              image: NetworkImage(
                                  'https://www.yolo-japan.com/assets/images/top/sns-follow-insta.webp'),
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                  Colors.orangeAccent, BlendMode.modulate),
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                FaIcon(FontAwesomeIcons.instagram, size: 40, color: Colors.white,),
                                SizedBox(height: 10),
                                Text('@yolojapan_2018', style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                                SizedBox(height: 10,),
                                Container(width: 130, height: 30,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(150, 205, 205, 205),
                                    border: Border.all(color: Colors.white)
                                  ),
                                  child: TextButton(
                                    onPressed: () async {final instargram_YOLO = ('https://www.instagram.com/yolojapan_2018/');
                                      if (await canLaunch(instargram_YOLO)) {await launch(instargram_YOLO,);}
                                      },
                                      child: Text('팔로우 해주세요!', style: TextStyle(color: Colors.white, fontSize: 9.5)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 5,
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: null,
                            child: Ink.image(
                              image: NetworkImage(
                                  'https://www.yolo-japan.com/assets/images/top/sns-follow-facebook.webp'),
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                  Colors.lightBlueAccent, BlendMode.modulate),
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [SizedBox(height: 10),
                                FaIcon(FontAwesomeIcons.squareFacebook, size: 40, color: Colors.white,),
                                SizedBox(height: 10),
                                Text('@yolojapan', style: TextStyle(fontSize: 15, color: Colors.white),),
                                SizedBox(height: 10),
                                Container(
                                  width: 130,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(150, 205, 205, 205),
                                    border: Border.all(color: Colors.white)
                                  ),
                                  child: Center(
                                      child: TextButton(
                                        onPressed: () async {final facebook_YOLO = ('https://www.facebook.com/yolojapan/');
                                        if (await canLaunch(facebook_YOLO)) {await launch(facebook_YOLO,);}
                                        },
                                        child: Text('팔로우 해주세요!', style: TextStyle(color: Colors.white, fontSize:9.5),)
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.blue,
              child: Stack(
                children: [
                  Image.network(
                    'https://www.yolo-japan.com/assets/images/top/bg_about.webp',
                    fit: BoxFit.fill,
                    height: 250,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'YOLO JAPAN이란?',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            '일본에 거주하는 외국인에게 새로운 업무를 제공한다!',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            'YOLO JAPAN은 일본에서 일하고 싶은 외국인을 서포트하는 외국인 전문 구인사이트입니다.',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '아르바이트, 취업활동 외에도 모니터 업무 또는 인플루언서 등, 즐겁게 할 수있는 일이 가득!',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '또한, 일본에서 처음으로 외국인 대상 취업 트레이닝 시설[YOLOBASE]를 운영하고 있습니다.',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));},
                child: Image.asset(
                  'imag/YOLO_JP.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        bottomNavigationBar: ChoisBar());
  }
}
