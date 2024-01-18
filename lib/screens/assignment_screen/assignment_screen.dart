import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';
import 'package:school_app/screens/assignment_screen/data/assignment_data.dart';
import 'package:school_app/screens/assignment_screen/widgets/assignment_widgets.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: kDefaultPadding * 4),
          child: Text('Assignment'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(kDefaultPadding)),
                color: kOtherColor,
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(kDefaultPadding),
                physics: const BouncingScrollPhysics(),
                itemCount: assignment.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: kDefaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kDefaultPadding),
                              color: kOtherColor,
                              boxShadow: const [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2.0,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                    color: kSecondaryColor,
                                    borderRadius:
                                        BorderRadius.circular(kDefaultPadding)),
                                child: Center(
                                  child: Text(
                                    assignment[index].subjectName,
                                    style: const TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              kHalfSizedBox,
                              Text(
                                assignment[index].topicName,
                                style: const TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              kHalfSizedBox,
                              AssignmentDetailRow(
                                title: 'Assign Date',
                                statusValue: assignment[index].assignDate,
                              ),
                              kHalfSizedBox,
                              AssignmentDetailRow(
                                title: 'Last Date',
                                statusValue: assignment[index].lastDate,
                              ),
                              kHalfSizedBox,
                              AssignmentDetailRow(
                                title: 'Status',
                                statusValue: assignment[index].status,
                              ),
                              kHalfSizedBox,
                              if (assignment[index].status == 'Pending')
                                AssignmentButton(
                                  title: 'To be Submitted',
                                  onPressed: () {
                                    // submit here
                                  },
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
