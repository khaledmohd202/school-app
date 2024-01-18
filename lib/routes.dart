import 'package:flutter/material.dart';
import 'package:school_app/screens/assignment_screen/assignment_screen.dart';
import 'package:school_app/screens/datesheet_screen/datesheet_screen.dart';
import 'package:school_app/screens/fee_screen/fee_screen.dart';
import 'package:school_app/screens/home_screen/home_screen.dart';
import 'package:school_app/screens/login_screen/login_screen.dart';
import 'package:school_app/screens/my_profile_screen/my_profile_screen.dart';
import 'package:school_app/screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName :(context) => const SplashScreen(),
  LoginScreen.routeName :(context) => const LoginScreen(),
  HomeScreen.routeName :(context) => const HomeScreen(),
  MyProfileScreen.routeName :(context) => const MyProfileScreen(),
  FeeScreen.routeName :(context) => const FeeScreen(),
  AssignmentScreen.routeName :(context) => const AssignmentScreen(),
  DateSheetScreen.routeName :(context) => const DateSheetScreen(),
};
