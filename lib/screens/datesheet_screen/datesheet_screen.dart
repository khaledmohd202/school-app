import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';
import 'package:school_app/screens/datesheet_screen/data/datesheet_data.dart';

class DateSheetScreen extends StatelessWidget {
  const DateSheetScreen({super.key});
  static String routeName = 'DateSheetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: kDefaultPadding * 4),
          child: Text('DateSheet'),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(kDefaultPadding)),
          color: kOtherColor,
        ),
        child: ListView.builder(
          itemCount: dateSheet.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              // height: MediaQuery.of(context).size.height / 8,
              margin:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kDivider,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            dateSheet[index].date.toString(),
                            style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            dateSheet[index].monthName,
                            style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            dateSheet[index].subjectName,
                            style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            dateSheet[index].dayName,
                            style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.access_time,
                            color: kSecondaryColor,
                          ),
                          Text(
                            dateSheet[index].time,
                            style: const TextStyle(
                              color: kTextLightColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  kDivider,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
