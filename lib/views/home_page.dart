import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:buttom_sheet/widgets/login.dart';
import 'package:buttom_sheet/widgets/register.dart';
import 'package:buttom_sheet/widgets/elevatedbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050522),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage('image/Illustration Picture.png'),
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  color: Color(0xffEF5858),
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Lorem ipsum dolar sit amet, consectetur adpiscing elit,sed do eiusmod",
                  style: TextStyle(
                    color: Color(0xffF4F4F4),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButtonn(
                bottomSheet: CreateAccountBottomSheet(),
                paddingWidth: 60,
                textColor: Color(0xff1B1A40),
                backgroundColor: Color(0xffFFDE69),
                buttonText: 'Create Account',
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButtonn(
                bottomSheet: LoginBottomSheet(),
                paddingWidth: 100,
                textColor: Color(0XFFFFDE69),
                buttonText: 'Login',
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'All Right Reserved @2021',
                style: TextStyle(color: Color(0xffFFDE69), fontSize: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
