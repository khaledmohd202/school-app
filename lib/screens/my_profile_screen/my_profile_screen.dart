import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';
import 'package:school_app/screens/my_profile_screen/widegts/my_profile_widgets.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('My Profile')),
        actions: [
          InkWell(
            onTap: () {
              // send report to school management, in case if you want some changes to your profile
            },
            child: Container(
              padding: const EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [
                  const Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizedBox,
                  Text(
                    'Report',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            // student profile info
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage(kStudentProfileImage),
                  ),
                  kWidthSizedBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Khaled Mohammad',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Class x-II A | Roll no: 12',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 14.0,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kSizedBox,
            // student schooling info
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                  title: 'Registration Number',
                  value: '2023-ASDF-2024',
                ),
                ProfileDetailRow(
                  title: 'Academic Year',
                  value: '2023-2024',
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                  title: 'Academic Class',
                  value: 'x-II',
                ),
                ProfileDetailRow(
                  title: 'Admission Number',
                  value: '200136',
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                  title: 'Date of admission',
                  value: '19 Dec, 2023',
                ),
                ProfileDetailRow(
                  title: 'Date of Birth',
                  value: '20 Feb, 2002',
                ),
              ],
            ),
            kSizedBox,
            const ProfileDetailColumn(
              title: 'A Class',
              value: 'khaled@gmail.com',
            ),
            const ProfileDetailColumn(
              title: 'Father Name',
              value: 'Mohammad Badawi',
            ),
            const ProfileDetailColumn(
              title: 'Mother Name',
              value: 'Amina said',
            ),
            const ProfileDetailColumn(
              title: 'Phone Number',
              value: '+201152361485',
            ),
          ],
        ),
      ),
    );
  }
}
