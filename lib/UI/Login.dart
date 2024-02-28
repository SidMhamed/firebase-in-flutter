import 'package:firebase_in_flutter/MyLib/ButtonLogInRegister.dart';
import 'package:firebase_in_flutter/MyLib/ImageWidget.dart';
import 'package:firebase_in_flutter/MyLib/InputTextField.dart';
import 'package:firebase_in_flutter/MyLib/TextTitleSubTitle.dart';
import 'package:firebase_in_flutter/UI/Register.dart';
import 'package:firebase_in_flutter/UI/forgotPassword.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // FirebaseAuth _auth = FirebaseAuth.instance;

  Widget sizedBox(double Height) {
    return SizedBox(height: Height);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: ListView(
          children: <Widget>[
            ImageWidget(Url: "images/logo.png"),
            const TextTitleSubTitle(
              isTitle: "Welcome Back",
              isSubTitle: "Login to your minifurs account",
            ),
            sizedBox(30),
            InputTextField(
              labelText: "Enter Email Address",
              controller: emailController,
              obscured: false,
            ),
            sizedBox(20),
            InputTextField(
              labelText: "Password",
              controller: passwordController,
              obscured: true,
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPassword(),
                    ),
                  );
                },
                child: const Text(
                  "Forgot Password ?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            sizedBox(30),
            ButtonLoginRegister(
              isLogin: true,
              onLogin: () {
                // _auth.signInWithEmailAndPassword(
                //   email: emailController.toString(),
                //   password: passwordController.toString(),
                // );
              },
              onRegister: () {},
            ),
            sizedBox(20),
            Align(
              alignment: AlignmentDirectional.center,
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyRegisterPage(),
                              ),
                            );
                          },
                        text: 'Create account Here',
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
