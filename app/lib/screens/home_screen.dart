import 'package:app/utils/constants.dart';
import 'package:app/widgets/bottom_icon_btn.dart';
import 'package:app/widgets/header.dart';
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
                fontSize: 18.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit_outlined),
              color: appBlue,
              iconSize: 20.0,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: appDarkGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomIconButton(
              icon: CupertinoIcons.circle,
              label: 'Status',
            ),
            BottomIconButton(
              icon: CupertinoIcons.phone,
              label: 'Calls',
            ),
            BottomIconButton(
              icon: CupertinoIcons.camera,
              label: 'Camera',
            ),
            BottomIconButton(
              icon: CupertinoIcons.chat_bubble_2_fill,
              label: 'Chats',
              isSelected: true,
            ),
            BottomIconButton(
              icon: CupertinoIcons.settings,
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
