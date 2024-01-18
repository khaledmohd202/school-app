import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPress,
    required this.title,
    required this.iconData,
  });
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
            ),
            const Spacer(),
            Icon(
              iconData,
              size: 30.0,
              color: kOtherColor,
            ),
          ],
        ),
      ),
    );
  }
}
