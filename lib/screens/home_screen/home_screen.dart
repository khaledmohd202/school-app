import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';
import 'package:school_app/screens/assignment_screen/assignment_screen.dart';
import 'package:school_app/screens/datesheet_screen/datesheet_screen.dart';
import 'package:school_app/screens/fee_screen/fee_screen.dart';
import 'package:school_app/screens/home_screen/widgets/home_card.dart';
import 'package:school_app/screens/home_screen/widgets/student_data.dart';
import 'package:school_app/screens/login_screen/login_screen.dart';
import 'package:school_app/screens/my_profile_screen/my_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(studentName: 'Khaled'),
                        kHalfSizedBox,
                        StudentClass(
                            studentClass: 'Class x-II A | Roll no: 12'),
                        kHalfSizedBox,
                        StudentYear(studentYear: '2023-2024'),
                      ],
                    ),
                    kHalfSizedBox,
                    StudentPicture(
                      picAddress: kStudentProfileImage,
                      onPressed: () {
                        //go to profile detail screen
                        Navigator.pushNamed(context, MyProfileScreen.routeName);
                      },
                    ),
                  ],
                ),
                kSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                      title: 'Attendance',
                      value: '90.02%',
                      onPressed: () {
                        // go to attendance screen
                      },
                    ),
                    StudentDataCard(
                      title: 'Fees Due',
                      value: '600\$',
                      onPressed: () {
                        //go to fee due screen
                        Navigator.pushNamed(context, FeeScreen.routeName);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    // sizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPressed: () {
                            // go to Quiz Screen
                          },
                          icon: 'assets/icons/quiz.svg',
                          title: 'Take Quiz',
                        ),
                        HomeCard(
                          onPressed: () => Navigator.pushNamed(
                              context, AssignmentScreen.routeName),
                          icon: 'assets/icons/assignment.svg',
                          title: 'Assignment',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPressed: () {
                            // go to holiday screen
                          },
                          icon: 'assets/icons/holiday.svg',
                          title: 'Holidays',
                        ),
                        HomeCard(
                          onPressed: () {
                            // go to Time Table screen
                          },
                          icon: 'assets/icons/timetable.svg',
                          title: 'Time Table',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPressed: () {
                            // go to Results screen
                          },
                          icon: 'assets/icons/result.svg',
                          title: 'Results',
                        ),
                        HomeCard(
                          onPressed: () => Navigator.pushNamed(context, DateSheetScreen.routeName),
                          icon: 'assets/icons/datesheet.svg',
                          title: 'DateSheet',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPressed: () {
                            // go to chat Screen
                          },
                          icon: 'assets/icons/ask.svg',
                          title: 'Ask',
                        ),
                        HomeCard(
                          onPressed: () {
                            // go to gallery screen
                          },
                          icon: 'assets/icons/gallery.svg',
                          title: 'Gallery',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPressed: () {
                            // go to resume screen
                          },
                          icon: 'assets/icons/resume.svg',
                          title: 'Leave\nApplication',
                        ),
                        HomeCard(
                          onPressed: () {
                            // go to settings
                          },
                          icon: 'assets/icons/lock.svg',
                          title: 'Change\nPassword',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPressed: () {
                            // go to events screen
                          },
                          icon: 'assets/icons/event.svg',
                          title: 'Events',
                        ),
                        HomeCard(
                          onPressed: () => Navigator.popAndPushNamed(context, LoginScreen.routeName),
                          icon: 'assets/icons/logout.svg',
                          title: 'Logout',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
