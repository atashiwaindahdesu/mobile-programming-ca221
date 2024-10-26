import 'package:flutter/material.dart';
import 'package:whatsapp_ui/homescreen.dart';

void main() => runApp(WhatsAppClone());

class WhatsAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xff075E54),
          secondary: Color(0xff25D366),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
