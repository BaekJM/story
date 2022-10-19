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
  final GoogleSignInAuthentication? googleAuth = await googleUser
      ?.authentication;

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


/////////////////////////////////////////////////////////////////////////////
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim()
    );
  }
/////////////////////////////////////////////////////////////////////////////


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
              child: SingleChildScrollView( // 텍스창 에러 처리 (칸을 올려줌)
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'imag/YORO_JPIcon.png', width: 100, height: 100,),

                      SizedBox(height: 70,),
                      // Hello agin
                      Image.asset('imag/YORO_JPfont.png', width: 300,),

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
                              controller: emailController,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

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
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password'
                              ),
                              controller: passwordController,
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
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 30, right: 30),
                            decoration: BoxDecoration(
                              color: Colors.brown[400],
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
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
                          onPressed: signIn,
                        ),
                      ),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: RawMaterialButton(
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 15, left: 30, right: 30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),

                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'imag/icons8-구글-로고-480.png', height: 18,),
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
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (
                                  context) => Register_Now()));
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
