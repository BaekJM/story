import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:story/mainpage/modul.dart';
import 'package:url_launcher/url_launcher.dart';

class How_is_YOLO extends StatelessWidget {
  const How_is_YOLO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: appbar_Setting(),
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.grey[600],
        ),
        elevation: 0,
      ),
      endDrawer: drawer_Setting(),
      bottomNavigationBar: ChoisBar(),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            child: Stack(
              children: [
                Image.network(
                  'https://www.yolo-japan.com/assets/about/images/ptcontents_mainimg.png',
                  fit: BoxFit.fill,
                  height: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        'YOLO에 처음 오신분에게',
                      ),
                      Text(
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold),
                        '일본에 오셨으면 우선 YOLO JAPAN에 등록',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        '처음 뵙겠습니다. YOLO JAPN입니다!',
                      ),
                      Text(
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        '저희는 일본에서 거주중인 외국인에게 다양한 서비스를 제공하고 있습니다.',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        'YOLO JAPAN을 이용하여 일본에서 좀 더 편안하게 생활해 보아요!',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            height: 430,
            child: Column(
              children: [
                 Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.white.withOpacity(0.4),
                                        BlendMode.dstATop),
                                    image: NetworkImage(
                                        'https://www.yolo-japan.com/assets/about/images/ptcontents_img01.png'))),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          width: 17,
                                          height: 2,
                                          color: Colors.orangeAccent,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 30,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '선택받은 이유1',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '간단히 일자리를 찾을 수 있음',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.orangeAccent,
                              ),
                              Text(
                                '6개 언어 대응! 등록에서 면접까지 일본어가 필요없습니다.',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.orangeAccent,
                              ),
                              Text(
                                '번거로운 이력서는 필요 없습니다.',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.orangeAccent,
                              ),
                              Text(
                                '면접 날짜는 간편한 온라인 예약으로',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.black),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 15),
                            child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 1,
                                      color: Colors.grey[700],
                                    ),
                                    Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.penToSquare,
                                          size: 10,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '회원 등록 방법이나 면접 설정 방법 보러가기',
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.black),
                                        ),
                                        Text(
                                          '보러가기',
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 225,top:10,bottom: 10,right: 5),
                            child: Column(
                              children: [
                                for( num i=1; i<4; i++)
                                  Row(
                                    children: [
                                      for( num i=1; i<7; i++)
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Container(width: 3,height: 3,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(1.5)),color: Colors.orangeAccent),),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),


                          Stack(
                            children: [
                              Image.network(
                                'https://www.yolo-japan.com/assets/about/images/ptcontents_img02.png',
                                width: 200,
                              ),

                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 48,top: 110),
                                  child: TextButton(
                                    onPressed: () async {final Job_YOLO = ('https://www.yolo-japan.com/ko/recruit/job');
                                    if (await canLaunch(Job_YOLO)) {await launch(Job_YOLO,);}
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 7,bottom: 7,left: 25,right: 25),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Colors.redAccent,
                                            Colors.orangeAccent,
                                          ],
                                        ),
                                      ),
                                      child: const Text(
                                        "일자리 찾기",
                                        style:
                                        TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              )

                            ],
                          )
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 360,
            child: Column(
              children: [
                Container(
                  height: 60,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 17,
                              height: 2,
                              color: Colors.orangeAccent,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(25))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '선택받은 이유2',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '남는 시간에 용돈 벌이',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 30,bottom: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('YOLO JAPAN 에는 단시간 · 단발로 용돈 벌이가 가능한 일자리도 가득!',style: TextStyle(fontSize: 10,color: Colors.grey[800]),),
                      ],
                    ),
                ),

                SizedBox(height:20),

                Stack(
                  alignment: Alignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(right: 240),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container_Chois2(),
                          Column(
                            children: [
                              Image.network('https://www.yolo-japan.com/assets/about/images/reasons2-1.png',width: 80,),
                              SizedBox(height: 10),
                              Text('앙케이트',style: TextStyle(fontSize: 10,color: Colors.grey[800]),)
                            ],
                          )
                        ],
                      ),
                    ),

                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container_Chois2(),
                        Column(
                          children: [
                            Image.network('https://www.yolo-japan.com/assets/about/images/reasons2-2.png',width: 80,),
                            SizedBox(height: 10),
                            Text('인터뷰',style: TextStyle(fontSize: 10,color: Colors.grey[800]),)
                          ],
                        )
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 240),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container_Chois2(),
                          Column(
                            children: [
                              Image.network('https://www.yolo-japan.com/assets/about/images/reasons2-3.png',width: 80,),
                              SizedBox(height: 10),
                              Text('시식',style: TextStyle(fontSize: 10,color: Colors.grey[800]),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),

               SizedBox(height: 30,),

                Text('앙케이트나 인터뷰, 시식 등에 참가하는것 만으로도 간단하게 보수를 받을 수 있습니다.',style: TextStyle(fontSize: 9),),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 48,top: 10),
                        child: TextButton(
                          onPressed: () async {final Servey_YOLO = ('https://www.yolo-japan.com/ko/recruit/survey');
                          if (await canLaunch(Servey_YOLO)) {await launch(Servey_YOLO,);}
                          },
                          child: Container(
                            padding: EdgeInsets.only(top: 7,bottom: 7,left: 25,right: 25),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.redAccent,
                                  Colors.orangeAccent,
                                ],
                              ),
                            ),
                            child: const Text(
                              "일자리 찾기",
                              style:
                              TextStyle(color: Colors.white),
                            ),
                        ),
                  ),
                ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 17,
                              height: 2,
                              color: Colors.orangeAccent,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(25))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '선택받은 이유3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '충실한 라이프 서포트 서비스',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 30,bottom: 10),
                  child: Text('일자리 뿐만 아니라 생활에 도움이 되는 다양한 서비스를 제공하고 있습니다.',style: TextStyle(fontSize: 10,color: Colors.grey[800]),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: InkWell(onTap: () async {final Life_YOLO = ('https://lp.yolo-japan.com/yololife/');
                      if (await canLaunch(Life_YOLO)) {await launch(Life_YOLO,);}
                      },
                          child: Image.network('https://www.yolo-japan.com/assets/about/images/banner/yololife_sp_ko.jpg?v202210061640')),flex: 1,),
                      SizedBox(width:10),
                      Expanded(child: InkWell(onTap: () async {final Home_YOLO = ('https://home.yolo-japan.com/');
                      if (await canLaunch(Home_YOLO)) {await launch(Home_YOLO,);}
                      },
                          child: Image.network('https://www.yolo-japan.com/assets/yolohome/img/banner/top_sp_ko.jpg?v202210061640')),flex: 1,),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: InkWell(onTap: () async {final Mobile_YOLO = ('https://www.yolo-japan.com/ko/mobile/service');
                      if (await canLaunch(Mobile_YOLO)) {await launch(Mobile_YOLO,);}
                      },
                          child: Image.network('https://www.yolo-japan.com/assets/about/images/banner/banner_yolomobile_sp_ko.jpg?v202210061640')),flex: 1,),
                      SizedBox(width:10),
                      Expanded(child: InkWell(onTap: () async {final Pill_YOLO = ('https://www.yolo-japan.com/ko/yolo-pill-online/lp/b/');
                      if (await canLaunch(Pill_YOLO)) {await launch(Pill_YOLO,);}
                      },
                          child: Image.network('https://www.yolo-japan.com/assets/about/images/banner/yolo_pill_online_sp_ko.jpg?v202210061640')),flex: 1,),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),
                  child: InkWell(onTap:  () async {final Card_YOLO = ('https://www.yolo-japan.com/ko/yolocard/lp/');
                  if (await canLaunch(Card_YOLO)) {await launch(Card_YOLO,);}
                  },
                      child: Image.network('https://www.yolo-japan.com/assets/about/images/banner/banner_yolocard_ko.jpg?v202210061640')),
                ),


              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 800,
            child: Column(
              children: [
                Container(
                  height: 60,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 17,
                              height: 2,
                              color: Colors.orangeAccent,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(25))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '선택받은 이유4',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '외국인을 위한 시설 YOLO BASE를 개설',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 30,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('일본 최초의 외국인을 위한 취업 교육 시설 『YOLO BASE』가 오사카에 OPEN',style: TextStyle(fontSize: 10,color: Colors.grey[800]),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.network('https://www.yolo-japan.com/assets/about/images/yolobase_sp.png'),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                  child: Text('YOLO BASE는 「일본과 외국인이 연결되는 새로운 장소」입니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                  child: Text('일본에 온 외국인들이 즐거운 시간 및 향후 도움이 될 시간을 보낼 수 있도록,레스토랑 · 이벤트 스페이스 · 협업 스페이스 · 호텔을 설비해 두었습니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                  child: Text('또한 숙박 시설 안 곳곳에 100명의 아티스트가 제작한 다양한 아트가 그려져 있으며,비일상적인 공간에서 각각 원하는 시간을 보낼 수 있습니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                  child: Text('YOLO BASE에서는 외국인을 대상으로 매일 다양한 이벤트, 스터디, 교류회가 열리고 있으며,외국인과 외국인, 일본인과 외국인으로 매일 많은 만남과 발견이 생겨나고 있습니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                ),
                
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.redAccent,
                  Colors.orangeAccent,
                ],
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('YOLO JAPAN에 오신 것을 환영합니다'),

                    Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
                      child: Image.network('https://www.yolo-japan.com/assets/about/images/welcome.png'),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('YOLO JAPAN의 목표는 「외국인과 일본인이 공존하는 사회를 만드는」 것입니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('유학이나 취업 등 여러 가지 이유로 일본에서 사는 것을 선택하는 외국인은 해마다 증가하고 있습니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('일본에서 살면서 일해 주는 외국인이 있기떄문에 노동력 부족의 해소와 글로벌화하는 일본 기업이 많이 있습니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('그것은 즉 일본에 사는 외국인의 생활이 풍족해지면 일본은 더욱 풍족해진다는 것입니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('저희 YOLO JAPAN은 일본인도 외국인도 행복해질 수 있도록 다양한 서비스를 제공하고 있습니다.',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}

class Container_Chois2 extends StatelessWidget {
  const Container_Chois2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 120, height: 120,
          decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0, blurRadius: 7.0, offset: Offset(-4, -4),
            ),
            ],
          ),
        ),
        Container(width: 120, height: 120,
          decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(
              color: Colors.orangeAccent.withOpacity(0.7),
              spreadRadius: 2, blurRadius: 0.0, offset: Offset(6, 4),
            ),
            ],
          ),
        ),
      ],
    );
  }
}
