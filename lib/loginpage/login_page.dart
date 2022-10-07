import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story/mainpage/mainpage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  static Future<User?> loginUsingEmailPassword(
      {required String email,
        required String password,
        required BuildContext}) async {

    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found"){
        print("No user found for that email");
      }
    }
  return user;
  }

  @override
  Widget build(BuildContext context) {

    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView( // 텍스창 에러 처리 (칸을 올려줌)
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('imag/YORO_JPIcon.png',width: 100,height:100,),

                  SizedBox(height: 70,),
              // Hello agin
                  Image.asset('imag/YORO_JPfont.png',width: 300,),

                  SizedBox(height: 10,),

                  Text('로그인 페이지 추가 사항 작성란',
                style: TextStyle(
                    fontSize: 20
                )
            ),

              SizedBox(height: 50,),

              // Email Textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email'
                      ),
                      controller: _emailController,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              // password Textfiled
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true, //문자를 감추는 기능
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password'
                      ),
                      controller: _passwordController,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              // sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: RawMaterialButton(
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Colors.brown[400],
                    borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: const Text(
                          'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)
                      ),
                    ),
                  ),
                  onPressed: () async {
                    User? user = await loginUsingEmailPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                        BuildContext: BuildContext);
                    print(user);
                    if(user == null){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (BuildContext conte) => MainPage()));
                    }
                    else{
                      Text('없는 사용자입니다');
                    }
                  },
                ),
              ),
              SizedBox(height: 25,),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ]
            ),
          )
        ),
      )
    );
  }
}
