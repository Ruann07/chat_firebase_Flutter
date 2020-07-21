import 'package:chat_online_flutter/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
  Firestore.instance.collection("mensagens").snapshots().listen((dado) {
    dado.documents.forEach((element) {
      print(element.data);
    });
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.blue
        )
      ),
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}
