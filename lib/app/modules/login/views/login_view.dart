import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _logo(),
            const SizedBox(height: 50),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 50),
            _loginBtn(),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: 2),
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
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : " + usernameController.text);
        debugPrint("Password : " + passwordController.text);
      },
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Sign in ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Color.fromARGB(255, 233, 30, 99),
        onPrimary: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }
}
