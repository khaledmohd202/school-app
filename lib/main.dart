import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/constants.dart';
import 'package:school_app/routes.dart';
import 'package:school_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Brain',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        appBarTheme:const AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,
        ),
        textTheme:
            GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                .apply()
                .copyWith(
                  bodyLarge: const TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                  //bodyText2
                  bodyMedium:  const TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 28.0,
                  ),
                  titleMedium: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: kTextWhiteColor,
                  ),
                  titleSmall: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: kTextWhiteColor,
                  ),
                ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            fontSize: 15.0,
            color: kTextLightColor,
            height: 0.5,
          ),
          hintStyle: TextStyle(
            fontSize: 16.0,
            color: kTextBlackColor,
            height: 0.5,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
              width: 0.7,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kErrorBorderColor, width: 1.2),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kErrorBorderColor,
              width: 1.2,
            ),
          ),
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
