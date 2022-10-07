import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:story/loginpage/login_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
       future: _initializeFirebase(),
       builder: (context, snapshot){
         if(snapshot.connectionState == ConnectionState.done) {
           return LoginPage();
         }
         return const Center(
           child: CircularProgressIndicator(),
         );
       },
      )
    );
  }
}
