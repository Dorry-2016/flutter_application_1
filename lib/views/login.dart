import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constant.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/views/customtextfield.dart';
import 'package:flutter_application_1/views/CustomText.dart';

TextEditingController usernamecontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WELCOME"),
          backgroundColor: primaryColor,
          foregroundColor: appGrey,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   "flutter_application_1/.idea/assets/images/home.jpeg",
                    //   height: 100,
                    //   width: 100,
                    // ),
                  ],
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Customtext(
                        label: "NannySitters.com",
                        labelColor: appBlack,
                        fontsize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ]),
                const SizedBox(
                  height: 50,
                ),
                const Customtext(
                  label: "Username",
                  fontsize: 30,
                  fontWeight: FontWeight.bold,
                ),
                CustomTextField(
                  userFieldController: usernamecontroller,
                  icon: Icons.person,
                  hint: "enter username",
                  customTextFieldController: TextEditingController(),
                  hintText: 'enter username',
                  prefixIcon: Icon(Icons.account_circle),
                  controller: null,
                ),
                const Customtext(
                  label: "Password",
                  fontsize: 30,
                  fontWeight: FontWeight.bold,
                ),
                CustomTextField(
                  userFieldController: passwordcontroller,
                  customTextFieldController: passwordcontroller,
                  icon: Icons.lock,
                  hideText: true,
                  isPassword: true,
                  hint: "enter password",
                  controller: null,
                  hintText: 'password',
                  prefixIcon: Icon(Icons.abc),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  buttonLabel: 'login',
                  action: () {
                    Navigator.of(context).pushNamed('/dashboard');
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Customtext(
                        label: "no account? Register",
                        labelColor: primaryColor,
                        fontsize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ]),
        )));
  }
}
