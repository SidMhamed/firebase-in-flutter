import 'package:firebase_in_flutter/MyLib/ButtonLogInRegister.dart';
import 'package:firebase_in_flutter/MyLib/ImageWidget.dart';
import 'package:firebase_in_flutter/MyLib/InputTextField.dart';
import 'package:firebase_in_flutter/MyLib/TextTitleSubTitle.dart';
import 'package:firebase_in_flutter/UI/Login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
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
            ButtonLoginRegister(
              isLogin: false,
              onLogin: () {},
              onRegister: () {},
            ),
            sizedBox(20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyLoginPage(),
                  ),
                );
              },
              child: Icon(Icons.arrow_back),
            )
          ],
        ),
      ),
    );
  }
}
