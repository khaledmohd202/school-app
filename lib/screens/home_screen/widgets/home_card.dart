import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_app/constants.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.title});
  final VoidCallback onPressed;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: 40.0,
              height: 40.0,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: kDefaultPadding / 3),
          ],
        ),
      ),
    );
  }
}
