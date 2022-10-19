import 'package:flutter/material.dart';
import 'package:story/mainpage/modul.dart';
import 'package:story/mainpage/settingpage.dart';
import 'package:story/mainpage/settingpage.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Text('Alarm Page')
      ),
    );
  }
}
