import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  final List<String> contactImages = [
    'https://randomuser.me/api/portraits/men/1.jpg',
    'https://randomuser.me/api/portraits/women/2.jpg',
    'https://randomuser.me/api/portraits/men/3.jpg',
    'https://randomuser.me/api/portraits/women/4.jpg',
    'https://randomuser.me/api/portraits/men/5.jpg',
    'https://randomuser.me/api/portraits/women/6.jpg',
    'https://randomuser.me/api/portraits/men/7.jpg',
    'https://randomuser.me/api/portraits/women/8.jpg',
    'https://randomuser.me/api/portraits/men/9.jpg',
    'https://randomuser.me/api/portraits/women/10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contactImages.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(contactImages[index]),
          ),
          title: Text('Contact ${index + 1}'),
          subtitle: Text('Message preview...'),
          trailing: Text('12:00 PM'),
        );
      },
    );
  }
}
