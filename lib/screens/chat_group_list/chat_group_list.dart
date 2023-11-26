import 'package:flutter/material.dart';

class ChatGroupList extends StatefulWidget {
  const ChatGroupList({super.key});

  @override
  State<ChatGroupList> createState() => _ChatGroupListState();
}

class _ChatGroupListState extends State<ChatGroupList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Chat")),
    );
  }
}
