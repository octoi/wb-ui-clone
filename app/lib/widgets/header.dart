import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Chats',
            style: TextStyle(
              color: appWhite,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Broadcast Lists',
                style: TextStyle(
                  color: appBlue,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0,
                ),
              ),
              Text(
                'New Group',
                style: TextStyle(
                  color: appBlue,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0),
        const Divider(
          height: 2.0,
          color: appDarkGrey,
        ),
      ],
    );
  }
}
