import 'package:app/utils/constants.dart';
import 'package:app/widgets/chat_card.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ChatCard(
          image: rickImage,
          groupName: 'Rick Astley',
          lastMessage: 'Rick: never gonna give you ..',
          time: '9:50 PM',
          hasNewMessage: true,
          remainingMessage: 5,
        ),
        ChatCard(
          image: rickImage,
          groupName: 'Rick Astley',
          lastMessage: 'Rick: never gonna give you ..',
          time: '2:00 PM',
          hasNewMessage: true,
          remainingMessage: 2,
        ),
        ChatCard(
          image: rickImage,
          groupName: 'Rick Astley',
          lastMessage: 'Rick: never gonna give you ..',
          time: '7:05 AM',
          hasNewMessage: true,
          remainingMessage: 9,
        ),
        ChatCard(
          image: rickImage,
          groupName: 'Rick Astley',
          lastMessage: 'Rick: never gonna give you ..',
          time: 'YESTERDAY',
        ),
        ChatCard(
          image: rickImage,
          groupName: 'Rick Astley',
          lastMessage: 'Rick: never gonna give you ..',
          time: 'FRIDAY',
        ),
        ChatCard(
          image: rickImage,
          groupName: 'Rick Astley',
          lastMessage: 'Rick: never gonna give you ..',
          time: 'FRIDAY',
        ),
        ChatCard(
          image: rickImage,
          groupName: 'Rick Astley',
          lastMessage: 'Rick: never gonna give you ..',
          time: 'THURSDAY',
        ),
      ],
    );
  }
}
