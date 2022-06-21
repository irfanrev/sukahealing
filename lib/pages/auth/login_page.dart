import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container();
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
