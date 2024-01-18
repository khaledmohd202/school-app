import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';
import 'package:school_app/screens/fee_screen/data/fee_data.dart';
import 'package:school_app/screens/fee_screen/widgets/fee_widgets.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: kDefaultPadding * 5.5),
          child: Text('Fee'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(kDefaultPadding),
                itemCount: fee.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: kDefaultPadding),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(kDefaultPadding),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kTextLightColor,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              FeeDetailRow(
                                title: 'Receipt No',
                                statusValue: fee[index].receiptNo,
                              ),
                              const SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailRow(
                                title: 'Month',
                                statusValue: fee[index].month,
                              ),
                              kSizedBox,
                              FeeDetailRow(
                                title: 'Payment Date',
                                statusValue: fee[index].paymentDate,
                              ),
                              kSizedBox,
                              FeeDetailRow(
                                title: 'Status',
                                statusValue: fee[index].paymentStatus,
                              ),
                              kSizedBox,
                              const SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailRow(
                                title: 'Total Amount',
                                statusValue: fee[index].totalAmount,
                              ),
                            ],
                          ),
                        ),
                        FeeButton(
                          title: fee[index].btnStatus,
                          iconData: fee[index].btnStatus == 'Paid'
                              ? Icons.download_outlined
                              : Icons.arrow_right_alt,
                          onPressed: () {},
                        )
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
