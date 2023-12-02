import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SendMessageButton extends StatelessWidget {
  const SendMessageButton({
    Key? key,
    required this.isMessageEmpty,
    required this.onSendMessage,
  }) : super(key: key);

  final bool isMessageEmpty;
  final Function() onSendMessage;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      key: const Key('button_send_message'),
      padding: EdgeInsets.zero,
      onPressed: onSendMessage,
      child: CircleAvatar(
        maxRadius: 24,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: const Icon(
              FluentIcons.send_24_filled,
              key:  Key('send_message'),
              color: Color(0xffFFFFFF),
              size: 24,
            )),
      ),
    );
  }
}
