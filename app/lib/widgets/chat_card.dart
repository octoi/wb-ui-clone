import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String image;
  final String groupName;
  final String lastMessage;
  final bool hasNewMessage;
  final String time;
  final int remainingMessage;

  const ChatCard({
    Key? key,
    required this.image,
    required this.groupName,
    required this.lastMessage,
    required this.time,
    this.hasNewMessage = false,
    this.remainingMessage = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(image),
                      radius: 30.0,
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          groupName,
                          style: const TextStyle(
                            color: appWhite,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          lastMessage,
                          style: const TextStyle(
                            color: appGrey,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        color: hasNewMessage ? appBlue : appGrey,
                      ),
                    ),
                    if (hasNewMessage) const SizedBox(height: 5.0),
                    if (hasNewMessage)
                      Container(
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: appBlue,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Center(
                          child: Text(
                            '$remainingMessage',
                            style: const TextStyle(
                              color: appBlack,
                            ),
                          ),
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ),
        const Divider(
          height: 2.0,
          color: appDarkGrey,
        ),
      ],
    );
  }
}
