import 'package:flutter/material.dart';
import 'package:lab_8/utils/my_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _imageBanner(context),
            _textFieldEmail(),
            _textFieldPassword(),
            _loginButton(),
            _textDontHaveAccount(),
          ],
        ),
      ),
    );
  }

  Row _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'No tienes cuenta?',
          style: TextStyle(
            color: MyColors.primaryColor,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        GestureDetector(
          child: const Text(
            'Regístrate',
            style: TextStyle(
              color: MyColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _loginButton() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 30,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
        ),
        onPressed: () {},
        child: const Text('Login'),
      ),
    );
  }

  Container _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: MyColors.primaryColorOpacity,
        borderRadius: BorderRadius.circular(40),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Correo electrónico',
          hintStyle: TextStyle(
            color: MyColors.primaryColorDark,
          ),
          prefixIcon: Icon(
            Icons.email,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Container _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: MyColors.primaryColorOpacity,
        borderRadius: BorderRadius.circular(40),
      ),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Contraseña',
          hintStyle: TextStyle(
            color: MyColors.primaryColorDark,
          ),
          prefixIcon: Icon(
            Icons.password,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Container _imageBanner(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .22,
        bottom: 70,
      ),
      child: Image.asset(
        'assets/images/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
