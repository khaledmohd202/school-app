import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.only(
        right: kDefaultPadding / 4,
        left: kDefaultPadding / 4,
        top: kDefaultPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kTextLightColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kTextLightColor,
                      fontSize: 15.0,
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kTextBlackColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
