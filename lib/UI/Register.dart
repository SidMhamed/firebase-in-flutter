import 'package:firebase_in_flutter/UI/Login.dart';
import 'package:firebase_in_flutter/MyLib/ButtonLogInRegister.dart';
import 'package:firebase_in_flutter/MyLib/ImageWidget.dart';
import 'package:firebase_in_flutter/MyLib/InputTextField.dart';
import 'package:firebase_in_flutter/MyLib/TextTitleSubTitle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { yes, no }

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({super.key});

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int _selectedValue = 1;
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
                isSubTitle: "Login to your minifurs account"),
            sizedBox(30),
            InputTextField(
              labelText: "Full name",
              controller: fullNameController,
              obscured: false,
            ),
            sizedBox(20),
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
            const Align(
              alignment: AlignmentDirectional.topEnd,
              child: Row(
                children: [],
              ),
            ),
            sizedBox(20),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  value: 0,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value as int;
                    });
                  },
                ),
                Text(
                  'I accept the Terms of Service & Privacy Policy',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            sizedBox(20),
            ButtonLoginRegister(
              isLogin: false,
              onLogin: () {},
              onRegister: () {},
            ),
            sizedBox(20),
            Align(
              alignment: AlignmentDirectional.center,
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLoginPage(),
                              ),
                            );
                          },
                        text: 'login Here',
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
