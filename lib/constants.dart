import 'package:flutter/material.dart';

//Colors
const Color kPrimaryColor = Color(0xFF345FB4);
const Color kSecondaryColor = Color(0xFFB2C4E0);
const Color kTextBlackColor = Color(0xFF37393B);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);

//Default Value
const double kDefaultPadding = 20.0;

const kSizedBox = SizedBox(height: kDefaultPadding);
const kHalfSizedBox = SizedBox(height: kDefaultPadding / 2);

const kWidthSizedBox = SizedBox(width: kDefaultPadding);
const kHalfWidthSizedBox = SizedBox(width: kDefaultPadding / 2);

const kDivider = SizedBox(
    height: kDefaultPadding,
    child: Divider(
      thickness: 1.0,
    ));

//Validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//Validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//Images
const String kSplashImage = 'assets/images/splash.png';
const String kStudentProfileImage = 'assets/images/khaled.jpg';
