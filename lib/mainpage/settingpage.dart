import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story/main.dart';
import 'package:story/mainpage/alarmpage.dart';
import 'package:story/mainpage/language/how_language.dart';
import 'package:story/mainpage/language/modul_language.dart';
import 'package:story/mainpage/modul.dart';

import 'language/main_language.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  void Language_Alarm() {

    if(language == 'KOREA'){
      language_Alarm = '알림';
      language_Tilte = '한국어로 변경하겠습니까?';
    }else{
      language_Alarm = 'アラーム';
      language_Tilte = '日本語に変更しますか？';
    }

    Language_Chage language_Chage = Get.put(Language_Chage());
    Modul_Chage Modul_chage = Get.put(Modul_Chage());
    How_Chage How_chage = Get.put(How_Chage());

    void Chois_end(){
      if(language == 'KOREA'){
        language_Chage.Kr();
      }else{
        language_Chage.Jp();
      }
      language_Chage.language_Change();
      Modul_chage.language_Change();
      How_chage.language_Change();

    }

    showDialog(context: context, builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.brown[100],
            title: Text('${language_Alarm}'),
            content: Text('${language_Tilte}'),
            actions: [
              MaterialButton(onPressed: (){
                setState(() {
                  Chois_end();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp()));
                });
              },
              child: Text('Yes'),),
              MaterialButton(onPressed: (){
                Navigator.pop(context);
              },
              child: Text('No'),),
            ],
          );
        }
    );
  }


  String language = '';
  String language_Tilte = '';
  String language_Alarm = '';
  
  @override
  Widget build(BuildContext context) {
    Language_Chage SW = Get.put(Language_Chage());
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Text('『 Language 』'),
                  ],
                ),

                SizedBox(height: 3),
                Align(alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Container(height: 1,width: 240,color: Colors.black,),
                        SizedBox(height: 2),
                        Container(height: 1,width: 240,color: Colors.black,),
                      ],
                    )),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 35,
                      child: InkWell(
                        onTap: () {
                          language = 'KOREA';
                          Language_Alarm();
                        },
                        child: Ink.image(
                          image: NetworkImage(
                              'https://www.yolo-japan.com/assets/images/base/lang_ko.png?v202210171600'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 35,
                      child: InkWell(
                        onTap: () {
                          language = 'JAPAN';
                          Language_Alarm();
                        },
                        child: Ink.image(
                          image: NetworkImage(
                              'https://www.yolo-japan.com/assets/images/base/lang_ja.png?v202210171600'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    ///////end
                  ],
                ),
                ////////end
              ],
            ),
          )
      ),
    );
  }
}