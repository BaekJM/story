import 'package:flutter/material.dart';
import 'package:story/mainpage/modul.dart';
import 'package:story/mainpage/settingpage.dart';
import 'package:story/mainpage/settingpage.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        automaticallyImplyLeading : false,
        title: Text('Connet',style: TextStyle(fontSize: 30,color: Colors.black),),
        actions: [
          IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AlarmPage()));},
            icon: Icon(Icons.connecting_airports),
          ),
          IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
          child: Text('Alarm Page')
      ),
      bottomNavigationBar: ChoisBar(),
    );
  }
}
