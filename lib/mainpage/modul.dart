import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:story/loginpage/login_page.dart';
import 'package:story/main.dart';
import 'package:story/mainpage/alarmpage.dart';
import 'package:story/mainpage/findpage.dart';
import 'package:story/mainpage/friendpage.dart';
import 'package:story/mainpage/how_to_use/howyolo.dart';
import 'package:story/mainpage/mainpage.dart';
import 'package:story/mainpage/message.dart';
import 'package:story/mainpage/settingpage.dart';
import 'package:url_launcher/url_launcher.dart';

class ChoisBar extends StatelessWidget {
  const ChoisBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              icon: Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => FriendPage()));
              },
              icon: Icon(Icons.person_outline),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MessagePage()));
              },
              icon: Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AlarmPage()));
              },
              icon: Icon(Icons.notifications_none),
            ),
          ],
        ),
      ),
    );
  }
}

class appbar_Setting extends StatelessWidget {
  const appbar_Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 10,
      ),
      child: Container(
        height: 25,
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MainPage()));
          },
          child: Image.asset(
            'imag/main_logo.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class drawer_Setting extends StatelessWidget {
  const drawer_Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Image.network('${snapshot.data?.photoURL}'),
                );
              },
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SettingPage()));
                  },
                ),
              )
            ],
            accountEmail: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
                return Text('${snapshot.data?.email}');
              },
            ),
            accountName: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
                return Text('${snapshot.data?.displayName}');
              },
            ),
            onDetailsPressed: () {
              print('press details');
            },
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.orangeAccent,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
          ),
          Container(
            width: double.infinity,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: TextButton(
                        onPressed: () async {
                          final Link_YOLO =
                              ('https://www.yolo-japan.com/ko/recruit/mypage/application/');
                          if (await canLaunch(Link_YOLO)) {
                            await launch(
                              Link_YOLO,
                            );
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            FaIcon(
                              FontAwesomeIcons.fileLines,
                              size: 18,
                              color: Colors.redAccent,
                            ),
                            Text(
                              '응모 · 전형 상황',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 4,
                                  fontSize: 9,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(''),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: TextButton(
                        onPressed: () async {
                          final Link_YOLO =
                              ('https://www.yolo-japan.com/ko/recruit/mypage/bookmark/');
                          if (await canLaunch(Link_YOLO)) {
                            await launch(
                              Link_YOLO,
                            );
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            FaIcon(
                              FontAwesomeIcons.heart,
                              size: 18,
                              color: Colors.redAccent,
                            ),
                            Text(
                              '즐겨찾기',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 4,
                                  fontSize: 9,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(''),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: TextButton(
                        onPressed: () async {
                          final Link_YOLO =
                              ('https://www.yolo-japan.com/ko/recruit/mypage/');
                          if (await canLaunch(Link_YOLO)) {
                            await launch(
                              Link_YOLO,
                            );
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            FaIcon(
                              FontAwesomeIcons.user,
                              size: 18,
                              color: Colors.redAccent,
                            ),
                            Text(
                              '마이 페이지',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 4,
                                  fontSize: 9,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          ),
          ListTile(
            title: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.check,
                  size: 12,
                  color: Colors.grey[800],
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'YOLO에 처음 오신분들에게',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => How_is_YOLO()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.hourglassHalf,
                  size: 12,
                  color: Colors.grey[800],
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '아르바이트',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO =
                  ('https://www.yolo-japan.com/ko/recruit/job?employment=parttime');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.suitcase,
                  size: 12,
                  color: Colors.grey[800],
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '풀 타임',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO =
                  ('https://www.yolo-japan.com/ko/recruit/job?employment=fulltime');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.userCheck,
                      size: 7,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '모니터',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO =
                  ('https://www.yolo-japan.com/ko/recruit/survey');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.suitcase,
                      size: 7,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '픽업 특집',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO =
                  ('https://www.yolo-japan.com/ko/recruit/feature/list');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.creditCard,
                      size: 7,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '후불 카드',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO = ('https://www.yolo-japan.com/ko/yolocard/lp/');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Icon(
                      Icons.home_outlined,
                      color: Colors.redAccent,
                      size: 12,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '임대 물건',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO = ('https://home.yolo-japan.com/ko');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.simCard,
                      size: 7,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'SIM 카드',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO =
                  ('https://www.yolo-japan.com/ko/mobile/service');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.userShield,
                      size: 8,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '온라인 경구 피임약 처방',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO = ('https://www.yolo-japan.com/ko/medical/pill/');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.fileLines,
                      size: 8,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '문지표',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO =
                  ('https://www.yolo-japan.com/ko/medical/service');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.passport,
                      size: 7,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '재류 자격 변경 / 갱신 대행 서비스',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO =
                  ('https://www.yolo-japan.com/ko/yololife/residenceCard/');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.tv,
                      size: 7,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '중고 가전제품',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO =
                  ('https://www.yolo-japan.com/ko/service/homeAppliances');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.bowlRice,
                      size: 9,
                      color: Colors.redAccent,
                    ))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '베트남 식품',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO = ('https://www.yolo-japan.com/ko/service/foods');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.bell,
                  size: 12,
                  color: Colors.grey[800],
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '알림',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO = ('https://www.yolo-japan.com/ko/information');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          ListTile(
            title: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.envelope,
                  size: 12,
                  color: Colors.grey[800],
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '자주 묻는 질문',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                      fontSize: 12),
                ),
              ],
            ),
            onTap: () async {
              final Link_YOLO = ('https://www.yolo-japan.com/ko/help/');
              if (await canLaunch(Link_YOLO)) {
                await launch(
                  Link_YOLO,
                );
              }
            },
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.rightFromBracket,
                      size: 12,
                      color: Colors.grey[800],
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Loge Out',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
