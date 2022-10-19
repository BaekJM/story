import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import 'package:story/mainpage/how_to_use/howyolo.dart';
import 'Package:flutter_swiper/flutter_swiper.dart';

import 'package:story/mainpage/language/main_language.dart';

import 'package:story/loginpage/login_page.dart';
import 'package:story/mainpage/modul.dart';
import 'package:story/mainpage/settingpage.dart';
import 'package:story/mainpage/alarmpage.dart';
import 'package:url_launcher/url_launcher.dart';

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
    Language_Chage L = Get.put(Language_Chage());
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
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
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
                              '${L.MainLogo1}',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${L.MainLogo2}',
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
                                onPressed: () async {
                                  final FirestSerch_YOLO =
                                      ('https://www.yolo-japan.com/ko/recruit/job/firstSearch/');
                                  if (await canLaunch(FirestSerch_YOLO)) {
                                    await launch(
                                      FirestSerch_YOLO,
                                    );
                                  }
                                },
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
                                      '${L.MainLogo3}',
                                      style: TextStyle(
                                          fontSize: L.MainLogo3_FontSize,
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
                onPressed: () async {
                  final Details157_YOLO =
                      ('https://www.yolo-japan.com/ko/information/details/157');
                  if (await canLaunch(Details157_YOLO)) {
                    await launch(
                      Details157_YOLO,
                    );
                  }
                },
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
                    Text(L.Pick1,
                        style: TextStyle(
                            color: Colors.white, fontSize: L.Pick_FontSize)),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.redAccent,
              child: TextButton(
                onPressed: () async {
                  final Details151_YOLO =
                      ('https://www.yolo-japan.com/ko/information/details/151');
                  if (await canLaunch(Details151_YOLO)) {
                    await launch(
                      Details151_YOLO,
                    );
                  }
                },
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
                    Text(L.Pick2,
                        style: TextStyle(
                            color: Colors.white, fontSize: L.Pick_FontSize)),
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
                        onTap: () async {
                          final Feature148_YOLO =
                              ('https://www.yolo-japan.com/ko/recruit/feature/148');
                          if (await canLaunch(Feature148_YOLO)) {
                            await launch(
                              Feature148_YOLO,
                            );
                          }
                        },
                        child: Ink.image(
                          image: NetworkImage(L.benner1),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () async {
                          final Feature44_YOLO =
                              ('https://www.yolo-japan.com/ko/recruit/feature/44');
                          if (await canLaunch(Feature44_YOLO)) {
                            await launch(
                              Feature44_YOLO,
                            );
                          }
                        },
                        child: Ink.image(
                          image: NetworkImage(L.benner2),
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
                              '${L.interest1}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () async {
                            final Parttime_YOLO =
                                ('https://www.yolo-japan.com/ko/recruit/job?employment=parttime');
                            if (await canLaunch(Parttime_YOLO)) {
                              await launch(
                                Parttime_YOLO,
                              );
                            }
                          },
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(color: Colors.grey),
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
                          color: Colors.grey,
                          activeColor: Colors.redAccent,
                          size: 4,
                          activeSize: 7),
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
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight: Radius
                                                              .circular(8),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8)),
                                                  color: Colors.white),
                                              width: double.infinity,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                '${L.interest1_0}',
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          decorationThickness:
                                                              3,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .briefcase,
                                                          size: 9,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 9,
                                                                color: Colors
                                                                    .grey),
                                                            '${L.interest1_1}'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .yenSign,
                                                          size: 9,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 9,
                                                                color: Colors
                                                                    .grey),
                                                            '${L.interest1_2}'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .locationDot,
                                                          size: 9,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 9,
                                                                color: Colors
                                                                    .grey),
                                                            '${L.interest1_3}'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .solidComments,
                                                          size: 9,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 9,
                                                                color: Colors
                                                                    .grey),
                                                            '${L.interest1_4}'),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ))
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
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight: Radius
                                                              .circular(8),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8)),
                                                  color: Colors.white),
                                              width: double.infinity,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                '${L.interest1_0}',
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          decorationThickness:
                                                              3,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .briefcase,
                                                          size: 9,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 9,
                                                                color: Colors
                                                                    .grey),
                                                            '${L.interest1_1}'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .yenSign,
                                                          size: 9,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 9,
                                                                color: Colors
                                                                    .grey),
                                                            '${L.interest1_2}'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .locationDot,
                                                          size: 9,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 9,
                                                                color: Colors
                                                                    .grey),
                                                            '${L.interest1_3}'),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .solidComments,
                                                          size: 9,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 9,
                                                                color: Colors
                                                                    .grey),
                                                            '${L.interest1_4}'),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ))
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
                                  '${L.interest2}',
                                style: TextStyle(
                                    fontSize: L.interest2_Size,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          TextButton(
                              onPressed: () async {
                                final Servey_YOLO =
                                    ('https://www.yolo-japan.com/ko/recruit/survey');
                                if (await canLaunch(Servey_YOLO)) {
                                  await launch(
                                    Servey_YOLO,
                                  );
                                }
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Details',
                                    style: TextStyle(color: Colors.white),
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
                      height: 220,
                      child: Swiper(
                        duration: 2000,
                        pagination: SwiperPagination(
                          alignment: Alignment.bottomLeft,
                          builder: DotSwiperPaginationBuilder(
                              color: Colors.grey,
                              activeColor: Colors.orange,
                              size: 4,
                              activeSize: 7),
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
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
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
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          8),
                                                              bottomLeft: Radius
                                                                  .circular(8)),
                                                      color: Colors.white),
                                                  width: double.infinity,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                    '${L.interest2_0}',
                                                          style: TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough,
                                                              decorationThickness:
                                                                  3,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 11,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .yenSign,
                                                              size: 9,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 9,
                                                                    color: Colors
                                                                        .grey),
                                                                '${L.interest2_1}'),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock,
                                                              size: 9,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 9,
                                                                    color: Colors
                                                                        .grey),
                                                                '${L.interest2_2}'),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .users,
                                                              size: 9,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 9,
                                                                    color: Colors
                                                                        .grey),
                                                                '${L.interest2_3}'),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ))
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
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
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
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          8),
                                                              bottomLeft: Radius
                                                                  .circular(8)),
                                                      color: Colors.white),
                                                  width: double.infinity,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                    '${L.interest2_0}',
                                                          style: TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough,
                                                              decorationThickness:
                                                                  3,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 11,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .yenSign,
                                                              size: 9,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 9,
                                                                    color: Colors
                                                                        .grey),
                                                                '${L.interest2_1}'),
                                                          ],
                                                        ),
                                                        SizedBox(height: 2),
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock,
                                                              size: 9,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 9,
                                                                    color: Colors
                                                                        .grey),
                                                                '${L.interest2_2}'),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .users,
                                                              size: 9,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 9,
                                                                    color: Colors
                                                                        .grey),
                                                              '${L.interest2_3}'),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ))
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
                child: InkWell(
                  onTap: () async {
                    final Cardlp_YOLO =
                        ('https://www.yolo-japan.com/ko/yolocard/lp/');
                    if (await canLaunch(Cardlp_YOLO)) {
                      await launch(
                        Cardlp_YOLO,
                      );
                    }
                  },
                  child: Image.network(
                    L.benner3,
                    fit: BoxFit.fill,
                  ),
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
                child: InkWell(
                  onTap: () async {
                    final Home_YOLO = ('https://home.yolo-japan.com/ko');
                    if (await canLaunch(Home_YOLO)) {
                      await launch(
                        Home_YOLO,
                      );
                    }
                  },
                  child: Image.network(
                    L.benner4,
                    fit: BoxFit.fill,
                  ),
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
                            '${L.House1}',
                            style: TextStyle(
                                fontSize: L.House1_Size,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () async {
                            final Home_YOLO =
                                ('https://home.yolo-japan.com/ko');
                            if (await canLaunch(Home_YOLO)) {
                              await launch(
                                Home_YOLO,
                              );
                            }
                          },
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(color: Colors.grey[700]),
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
                          color: Colors.grey,
                          activeColor: Colors.redAccent,
                          size: 4,
                          activeSize: 7),
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
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.only(
                                                      bottomRight: Radius
                                                          .circular(8),
                                                      bottomLeft:
                                                      Radius.circular(
                                                          8)),
                                                  color: Colors.white),
                                              width: double.infinity,
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${L.House1_0}',
                                                      style: TextStyle(
                                                          decoration:
                                                          TextDecoration
                                                              .lineThrough,
                                                          decorationThickness:
                                                          3,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 9,
                                                            color: Colors.grey),
                                                        '${L.House1_1}'),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 9,
                                                            color: Colors.grey),
                                                        '${L.House1_2}'),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 9,
                                                            color: Colors.grey),
                                                        '${L.House1_3}'),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 9,
                                                            color: Colors.grey),
                                                        '${L.House1_4}'),
                                                  ],
                                                ),
                                              ),
                                            ))
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
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight: Radius
                                                              .circular(8),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8)),
                                                  color: Colors.white),
                                              width: double.infinity,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                '${L.House1_0}',
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          decorationThickness:
                                                              3,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 9,
                                                            color: Colors.grey),
                                                        '${L.House1_1}'),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 9,
                                                            color: Colors.grey),
                                                        '${L.House1_2}'),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 9,
                                                            color: Colors.grey),
                                                        '${L.House1_3}'),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 9,
                                                            color: Colors.grey),
                                                      '${L.House1_4}'),
                                                  ],
                                                ),
                                              ),
                                            ))
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
                            '${L.PickupList1}',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () async {
                                final FeatureList_YOLO =
                                    ('https://www.yolo-japan.com/ko/recruit/feature/list');
                                if (await canLaunch(FeatureList_YOLO)) {
                                  await launch(
                                    FeatureList_YOLO,
                                  );
                                }
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Details',
                                    style: TextStyle(color: Colors.white),
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
                                child: InkWell(
                                  onTap: () async {
                                    final Feature137_YOLO =
                                        ('https://www.yolo-japan.com/ko/recruit/feature/137');
                                    if (await canLaunch(Feature137_YOLO)) {
                                      await launch(
                                        Feature137_YOLO,
                                      );
                                    }
                                  },
                                  child: Image.network(
                                    'https://uploads.yolo-japan.com/cache/feature_page_file_1000/137/3c91205998608b4e6ed077d0be314f85.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${L.PickupList1_0}',
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
                                child: InkWell(
                                  onTap: () async {
                                    final Feature143_YOLO =
                                        ('https://www.yolo-japan.com/ko/recruit/feature/143');
                                    if (await canLaunch(Feature143_YOLO)) {
                                      await launch(
                                        Feature143_YOLO,
                                      );
                                    }
                                  },
                                  child: Image.network(
                                    'https://uploads.yolo-japan.com/cache/feature_page_file_1000/143/ffc7a2f1d1ffce16597cfb98ac392e66.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${L.PickupList1_1}',
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
                                child: InkWell(
                                  onTap: () async {
                                    final Feature144_YOLO =
                                        ('https://www.yolo-japan.com/ko/recruit/feature/144');
                                    if (await canLaunch(Feature144_YOLO)) {
                                      await launch(
                                        Feature144_YOLO,
                                      );
                                    }
                                  },
                                  child: Image.network(
                                    'https://uploads.yolo-japan.com/cache/feature_page_file_1000/144/3510edd1c2902789ed79b20ef1b68aa4.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${L.PickupList1_2}',
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
                                child: InkWell(
                                  onTap: () async {
                                    final Feature131_YOLO =
                                        ('https://www.yolo-japan.com/ko/recruit/feature/131');
                                    if (await canLaunch(Feature131_YOLO)) {
                                      await launch(
                                        Feature131_YOLO,
                                      );
                                    }
                                  },
                                  child: Image.network(
                                    'https://uploads.yolo-japan.com/cache/feature_page_file_1000/131/633b1270092a1f529851e9ad22e9a5d4.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${L.PickupList1_3}',
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
                            '${L.Service}',
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
                                child: TextButton(
                                  onPressed: () async {
                                    final Service_YOLO =
                                        ('https://www.yolo-japan.com/ko/mobile/service');
                                    if (await canLaunch(Service_YOLO)) {
                                      await launch(
                                        Service_YOLO,
                                      );
                                    }
                                  },
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
                                        '${L.Service_0}',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                      Text(
                                        '(Click)',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )
                                    ],
                                  ),
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
                                child: TextButton(
                                  onPressed: () async {
                                    final Service_YOLO =
                                        ('https://www.yolo-japan.com/ko/medical/service');
                                    if (await canLaunch(Service_YOLO)) {
                                      await launch(
                                        Service_YOLO,
                                      );
                                    }
                                  },
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
                                        '${L.Service_1}',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                      Text(
                                        '(Click)',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )
                                    ],
                                  ),
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
                                child: TextButton(
                                  onPressed: () async {
                                    final hotel_YOLO =
                                        ('https://yolo-base.com/ko/hotel/');
                                    if (await canLaunch(hotel_YOLO)) {
                                      await launch(
                                        hotel_YOLO,
                                      );
                                    }
                                  },
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
                                        '${L.Service_2}',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                      Text(
                                        '(Click)',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )
                                    ],
                                  ),
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
                                child: TextButton(
                                  onPressed: () async {
                                    final Yolocardlp_YOLO =
                                        ('https://www.yolo-japan.com/ko/yolocard/lp/');
                                    if (await canLaunch(Yolocardlp_YOLO)) {
                                      await launch(
                                        Yolocardlp_YOLO,
                                      );
                                    }
                                  },
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
                                        '${L.Service_3}',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                      Text(
                                        '(Click)',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )
                                    ],
                                  ),
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
                            '${L.Information}',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () async {
                            final information_YOLO =
                                ('https://www.yolo-japan.com/ko/information');
                            if (await canLaunch(information_YOLO)) {
                              await launch(
                                information_YOLO,
                              );
                            }
                          },
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(color: Colors.grey[700]),
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.grey[100],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${L.Information_0}',style: TextStyle(fontSize: L.Information_0Size),),
                                  Text(
                                    '${L.Information_date}',
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
                                  Text('${L.Information_0}',style: TextStyle(fontSize: L.Information_0Size),),
                                  Text(
                                    '${L.Information_date}',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey[100],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${L.Information_0}',style: TextStyle(fontSize: L.Information_0Size),),
                                  Text(
                                    '${L.Information_date}',
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
                                  Text('${L.Information_0}',style: TextStyle(fontSize: L.Information_0Size),),
                                  Text(
                                    '${L.Information_date}',
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
                        onTap: () async {
                          final Foods_YOLO =
                              ('https://www.yolo-japan.com/ko/service/foods');
                          if (await canLaunch(Foods_YOLO)) {
                            await launch(
                              Foods_YOLO,
                            );
                          }
                        },
                        child: Ink.image(
                          image: NetworkImage(
                              '${L.benner5}'),
                          fit: BoxFit.fill,
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () async {
                          final HomeAppliances_YOLO =
                              ('https://www.yolo-japan.com/ko/service/homeAppliances');
                          if (await canLaunch(HomeAppliances_YOLO)) {
                            await launch(
                              HomeAppliances_YOLO,
                            );
                          }
                        },
                        child: Ink.image(
                          image: NetworkImage(
                            '${L.benner6}',),
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
                                FaIcon(
                                  FontAwesomeIcons.instagram,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 10),
                                Text('@yolojapan_2018',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 130,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(150, 205, 205, 205),
                                      border: Border.all(color: Colors.white)),
                                  child: TextButton(
                                    onPressed: () async {
                                      final instargram_YOLO =
                                          ('https://www.instagram.com/yolojapan_2018/');
                                      if (await canLaunch(instargram_YOLO)) {
                                        await launch(
                                          instargram_YOLO,
                                        );
                                      }
                                    },
                                    child: Text('${L.follow_Text}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.5)),
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
                              children: [
                                SizedBox(height: 10),
                                FaIcon(
                                  FontAwesomeIcons.squareFacebook,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '@yolojapan',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 130,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(150, 205, 205, 205),
                                      border: Border.all(color: Colors.white)),
                                  child: Center(
                                      child: TextButton(
                                          onPressed: () async {
                                            final facebook_YOLO =
                                                ('https://www.facebook.com/yolojapan/');
                                            if (await canLaunch(
                                                facebook_YOLO)) {
                                              await launch(
                                                facebook_YOLO,
                                              );
                                            }
                                          },
                                          child: Text(
                                            '${L.follow_Text}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9.5),
                                          ))),
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
              child: Stack(
                children: [
                  Image.network(
                    'https://www.yolo-japan.com/assets/images/top/bg_about.webp',
                    fit: BoxFit.fill,
                    height: 250,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => How_is_YOLO()));
                          },
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.white,
                              )
                            ],
                          )),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${L.howyolo_0}',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            '${L.howyolo_1}',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            '${L.howyolo_2}',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '${L.howyolo_3}',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '${L.howyolo_4}',
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
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
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
