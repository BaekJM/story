import 'package:flutter/material.dart';
import 'package:story/mainpage/modul.dart';
import 'package:story/mainpage/settingpage.dart';
import 'package:story/mainpage/alarmpage.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10,),
          child: Container(
            height: 25,
            child: Image.asset(
              'imag/main_logo.png', fit: BoxFit.fill,),
          ),
        ),
        iconTheme: IconThemeData(size: 30, color: Colors.grey[600],),
        elevation: 0,
      ),
      endDrawer: drawer_Setting(),
      body: Center(
          child: Text('마이페이지Page')
      ),
      bottomNavigationBar: ChoisBar(),
    );
  }
}