import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:story/mainpage/language/how_language.dart';
import 'package:story/mainpage/mainpage.dart';
import 'package:story/mainpage/modul.dart';
import 'package:url_launcher/url_launcher.dart';

class How_is_YOLO extends StatelessWidget {
  const How_is_YOLO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    How_Chage L = Get.put(How_Chage());
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
                        '${L.Text0_0}',
                      ),
                      Text(
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold),
                        '${L.Text0_1}',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        '${L.Text0_2}',
                      ),
                      Text(
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        '${L.Text0_3}',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        '${L.Text0_4}',
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
                                          '${L.Text1_0}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '${L.Text1_1}',
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
                                '${L.Text1_2}',
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
                                '${L.Text1_3}',
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
                                '${L.Text1_4}',
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
                                          '${L.Text1_5}',
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.black),
                                        ),
                                        Text(
                                          '${L.Text1_6}',
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
                                      child: Text(
                                        '${L.find}',
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
                              '${L.Text2_0}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '${L.Text2_1}',
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
                  padding: const EdgeInsets.only(top: 15,left: 30,bottom: 10,right: 20),
                  child:Container(child: Text('${L.Text2_2}',style: TextStyle(fontSize: 10,color: Colors.grey[800]),)),

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
                              Text('${L.Text2_3}',style: TextStyle(fontSize: 10,color: Colors.grey[800]),)
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
                            Text('${L.Text2_4}',style: TextStyle(fontSize: 10,color: Colors.grey[800]),)
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
                              Text('${L.Text2_5}',style: TextStyle(fontSize: 10,color: Colors.grey[800]),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),

               SizedBox(height: 30,),

                Text('${L.Text2_6}',style: TextStyle(fontSize: 9),),

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
                            child: Text(
                                '${L.find}',
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
                              '${L.Text3_0}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '${L.Text3_1}',
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
                  child: Text('${L.Text3_2}',style: TextStyle(fontSize: 10,color: Colors.grey[800]),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: InkWell(onTap: () async {final Life_YOLO = ('https://lp.yolo-japan.com/yololife/');
                      if (await canLaunch(Life_YOLO)) {await launch(Life_YOLO,);}
                      },
                          child: Image.network('${L.benner3_0}')),flex: 1,),
                      SizedBox(width:10),
                      Expanded(child: InkWell(onTap: () async {final Home_YOLO = ('https://home.yolo-japan.com/');
                      if (await canLaunch(Home_YOLO)) {await launch(Home_YOLO,);}
                      },
                          child: Image.network('${L.benner3_1}')),flex: 1,),
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
                          child: Image.network('${L.benner3_2}')),flex: 1,),
                      SizedBox(width:10),
                      Expanded(child: InkWell(onTap: () async {final Pill_YOLO = ('https://www.yolo-japan.com/ko/yolo-pill-online/lp/b/');
                      if (await canLaunch(Pill_YOLO)) {await launch(Pill_YOLO,);}
                      },
                          child: Image.network('${L.benner3_3}')),flex: 1,),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),
                  child: InkWell(onTap:  () async {final Card_YOLO = ('https://www.yolo-japan.com/ko/yolocard/lp/');
                  if (await canLaunch(Card_YOLO)) {await launch(Card_YOLO,);}
                  },
                      child: Image.network('${L.benner3_4}')),
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
                              '${L.Text4_0}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '${L.Text4_1}',
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
                      Text('${L.Text4_2}',style: TextStyle(fontSize: 10,color: Colors.grey[800]),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.network('https://www.yolo-japan.com/assets/about/images/yolobase_sp.png'),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                  child: Text('${L.Text4_3}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                  child: Text('${L.Text4_4}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                  child: Text('${L.Text4_5}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                  child: Text('${L.Text4_6}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
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
                    Text('${L.Text5_0}'),

                    Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
                      child: Image.network('https://www.yolo-japan.com/assets/about/images/welcome.png'),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('${L.Text5_1}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('${L.Text5_2}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('${L.Text5_3}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('${L.Text5_4}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3,left: 16,right: 16),
                      child: Text('${L.Text5_5}',style: TextStyle(fontSize: 9, color: Colors.grey[800]), textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
            )
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
