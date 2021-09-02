import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widgets/costum_social_icon.dart';
import '../../../../app/constants/images.dart';
import '../../../../widgets/costum_bottun.dart';
import '../controllers/account_controller.dart';
import '../../../../widgets/spaces.dart';
import '../../../../app/constants/colors.dart';
import '../../../../app/modules/register/views/register_view.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<AccountController>(
          init: AccountController(),
          initState: (_) {},
          builder: (_) {
            return SingleChildScrollView(
              child: Container(
                width: Get.width,
                padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                child: Column(
                  children: [
                    SpaceBig(),
                    _imageBloc(),
                    _textHeadingBloc(),
                    SpaceBig(),
                    _formBloc(),
                    InkWell(
                      onTap: () {
                        print('taped');
                      },
                      child: _forgotBloc(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _bottunBloc(),
                    SpaceBig(),
                    _socialIconBloc(),
                    SpaceBig(),
                    _singUpBloc(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _bottunBloc() {
    return CostumBottun(
      width: 180,
      background: AppColors.kBottunColor,
      text: 'LOG IN',
      onPress: () {},
    );
  }

  _forgotBloc() {
    return Container(
      width: Get.width,
      child: Text(
        'Forgot Password ?',
        textAlign: TextAlign.end,
        style: GoogleFonts.lato(
          fontSize: 12,
        ),
      ),
    );
  }

  _singUpBloc() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: GoogleFonts.lato(
            fontSize: 14,
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(RegisterView());
          },
          child: Text(
            "Sing Up",
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

  _socialIconBloc() {
    return Column(
      children: [
        Text(
          'Or connect using',
          style: GoogleFonts.lato(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SpaceMedium(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print('FB tapped');
              },
              child: CostumSocialIcon(
                color: Color(0xFF385c8e),
                icon: FontAwesomeIcons.facebookF,
                text: 'Facebook',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                print('Google tapped');
              },
              child: CostumSocialIcon(
                color: Color(0xFFf14436),
                icon: FontAwesomeIcons.google,
                text: 'Google',
              ),
            ),
          ],
        ),
      ],
    );
  }

  _formBloc() {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          Obx(
            () => Column(
              children: [
                Focus(
                  onFocusChange: (hasFocus) {
                    controller.hasFocus.value = !controller.hasFocus.value;
                  },
                  child: TextFormField(
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color:
                          controller.hasFocus.value ? Colors.blue : Colors.grey,
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
                          color: controller.hasFocus.value
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: controller.hasFocus.value
                            ? Colors.blue
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  _textHeadingBloc() {
    return Column(
      children: [
        Text(
          'Welcome back!',
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'Log in to your existant account of Q Allure',
          style: GoogleFonts.lato(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  _imageBloc() {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.kLoginImage),
        ),
      ),
    );
  }
}
