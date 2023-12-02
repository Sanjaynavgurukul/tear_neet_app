import 'package:flutter/material.dart';
import 'package:tyarineetki/screens/chat_group_list/widget/message_input.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({required this.titleText, super.key});
  final String titleText;

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final List<Message> messages = [];
  void _addMessage(String text, bool isMe) {
    setState(() {
      messages.add(Message(text, isMe));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CustomCacheImage(
            width: 40,
            height: 40,
            borderRadius: BorderRadius.circular(50),
            fit: BoxFit.cover,
            imageUrl:
                'https://thumbs.dreamstime.com/z/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg?w=992',
          ),
        ),
        elevation: 0,
        title: Text(widget.titleText),
      ),
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: true,
        child: SizedBox(
            child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message message = messages[index];
                  return _buildMessage(message);
                },
              ),
            ),
            MessageInput(
              onSendMessagePressed: (message) {
                _addMessage(message!, true);
              },
            )
          ],
        )),
      ),
    );
  }

  Widget _buildMessage(Message message) {
    return Align(
      alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: message.isMe ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          message.text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Message {
  final String text;
  final bool isMe;

  Message(this.text, this.isMe);
}
