import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:story/loginpage/register.dart';
import 'package:story/mainpage/mainpage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

///////////////////////////////////////////////////////////////////////////////////
Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
///////////////////////////////////////////////////////////////////////////////////

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

                  Text('Project : 2022.10.08 ~2022.10.19',
                style: TextStyle(
                    fontSize: 15
                )
            ),


              SizedBox(height: 60,),

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
                    padding: const EdgeInsets.only(top: 20,bottom: 20,left: 30,right: 30),
                    decoration: BoxDecoration(
                        color: Colors.brown[400],
                    borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],),
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
                    if(user != null){
                     MainPage();
                    }
                  },
                ),
              ),
              SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: RawMaterialButton(
                      child: Container(
                        padding: const EdgeInsets.only(top: 15,bottom: 15,left: 30,right: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),

                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('imag/icons8-구글-로고-480.png',height: 18,),
                              SizedBox(width: 5,),
                              const Text(
                                  'Sign in with Google',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)
                              ),
                            ],
                          ),
                        ),
                      ),
                      onPressed: signInWithGoogle,
                    ),
                  ),

                  SizedBox(height: 25,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register_Now()));
                        },
                        child: Text('Register now',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),

            ]
            ),
          )
        ),
      )
    );
  }
}
