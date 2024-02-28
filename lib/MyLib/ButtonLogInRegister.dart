import 'package:flutter/material.dart';

class ButtonLoginRegister extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onRegister;
  final bool isLogin;

  ButtonLoginRegister({
    required this.onLogin,
    required this.onRegister,
    required this.isLogin,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: const Color.fromRGBO(239, 33, 91, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        minimumSize: const Size(300, 50),
      ),
      onPressed: isLogin ? onLogin : onRegister,
      child: Text(
        isLogin ? 'Log In' : 'Create Account',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
