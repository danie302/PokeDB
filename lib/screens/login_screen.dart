import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(
        child: Text('LoginScreen'),
      ),
    );
  }
}
