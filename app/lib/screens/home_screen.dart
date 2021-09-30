import 'package:app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBlack,
      appBar: AppBar(
        backgroundColor: appBlack,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Edit',
              style: TextStyle(
                color: appBlue,
                fontWeight: FontWeight.normal,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.pen),
              color: appBlue,
            ),
          ],
        ),
      ),
    );
  }
}
