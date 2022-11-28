import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, 2),
            colors: <Color>[
              Color(0xfff966be),
              Color(0xfffc7fc7),
              Color(0xffff96d0),
              Color(0xffffacda),
              Color(0xffffc1e3),
              Color(0xffffd6ec),
              Color(0xffffebf6),
              Color(0xffffffff),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/Logo.png',
                width: 200,
                height: 200,
              ),
            ]),
      ),
    );
  }
}
