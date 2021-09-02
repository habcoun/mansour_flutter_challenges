import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/spaces.dart';
import '../controllers/register_controller.dart';
import '../../../../app/constants/colors.dart';
import '../../../../widgets/costum_bottun.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<RegisterController>(
          init: RegisterController(),
          initState: (_) {},
          builder: (controller) {
            return SingleChildScrollView(
              child: Container(
                width: Get.width,
                padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        _textIntroBloc(),
                        SpaceBig(),
                        _formBloc(),
                        SpaceBig(),
                        _costumBottunBloc(),
                        SpaceBig(),
                        _loginHereBloc(),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _loginHereBloc() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Alredy have an account?",
          style: GoogleFonts.lato(
            fontSize: 14,
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(RegisterView());
          },
          child: Text(
            "Login here",
            style: GoogleFonts.lato(
              fontSize: 13,
              color: Colors.blue,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }

  _textIntroBloc() {
    return Column(
      children: [
        Text(
          "Let's Get Started !",
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          "Create an account to Q Allure to get all features",
          style: GoogleFonts.lato(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  _costumBottunBloc() {
    return CostumBottun(
      width: 180,
      background: AppColors.kBottunColor,
      text: 'CREATE',
      onPress: () {},
    );
  }

  _formBloc() {
    return Obx(
      () => Column(
        children: [
          Focus(
            onFocusChange: (hasFocus) {
              controller.hasFocusLogin.value = !controller.hasFocusLogin.value;
            },
            child: TextFormField(
              style: GoogleFonts.lato(
                fontSize: 14,
                color:
                    controller.hasFocusLogin.value ? Colors.blue : Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                errorStyle: TextStyle(
                  fontSize: 11,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Login',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.user,
                    size: 17,
                    color: controller.hasFocusLogin.value
                        ? Colors.blue
                        : Colors.grey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: controller.hasFocusLogin.value
                      ? Colors.blue
                      : Colors.grey,
                ),
              ),
            ),
          ),
          SpaceMedium(),
          Focus(
            onFocusChange: (hasFocus) {
              controller.hasFocusEmail.value = !controller.hasFocusEmail.value;
            },
            child: TextFormField(
              style: GoogleFonts.lato(
                fontSize: 14,
                color:
                    controller.hasFocusEmail.value ? Colors.blue : Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                errorStyle: TextStyle(
                  fontSize: 11,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Email',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.envelope,
                    size: 17,
                    color: controller.hasFocusEmail.value
                        ? Colors.blue
                        : Colors.grey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: controller.hasFocusEmail.value
                      ? Colors.blue
                      : Colors.grey,
                ),
              ),
            ),
          ),
          SpaceMedium(),
          Focus(
            onFocusChange: (hasFocus) {
              controller.hasFocusPhone.value = !controller.hasFocusPhone.value;
            },
            child: TextFormField(
              style: GoogleFonts.lato(
                fontSize: 14,
                color:
                    controller.hasFocusPhone.value ? Colors.blue : Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                errorStyle: TextStyle(
                  fontSize: 11,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Phone',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.mobileAlt,
                    size: 17,
                    color: controller.hasFocusPhone.value
                        ? Colors.blue
                        : Colors.grey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: controller.hasFocusPhone.value
                      ? Colors.blue
                      : Colors.grey,
                ),
              ),
            ),
          ),
          SpaceMedium(),
          Focus(
            onFocusChange: (hasFocus) {
              controller.hasFocusPassword.value =
                  !controller.hasFocusPassword.value;
            },
            child: TextFormField(
              style: GoogleFonts.lato(
                fontSize: 14,
                color: controller.hasFocusPassword.value
                    ? Colors.blue
                    : Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                errorStyle: TextStyle(
                  fontSize: 11,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    CupertinoIcons.lock,
                    size: 20,
                    color: controller.hasFocusPassword.value
                        ? Colors.blue
                        : Colors.grey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: controller.hasFocusPassword.value
                      ? Colors.blue
                      : Colors.grey,
                ),
              ),
            ),
          ),
          SpaceMedium(),
          Focus(
            onFocusChange: (hasFocus) {
              controller.hasFocusConfirm.value =
                  !controller.hasFocusConfirm.value;
            },
            child: TextFormField(
              style: GoogleFonts.lato(
                fontSize: 14,
                color: controller.hasFocusConfirm.value
                    ? Colors.blue
                    : Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                errorStyle: TextStyle(
                  fontSize: 11,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Confirme Password',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    CupertinoIcons.lock,
                    size: 20,
                    color: controller.hasFocusConfirm.value
                        ? Colors.blue
                        : Colors.grey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: controller.hasFocusConfirm.value
                      ? Colors.blue
                      : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
