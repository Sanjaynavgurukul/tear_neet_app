import 'package:flutter/material.dart';
import 'package:tyarineetki/screens/chat_group_list/widget/send_message.dart';

class MessageInput extends StatefulWidget {
  final Function(String?) onSendMessagePressed;
  const MessageInput({required this.onSendMessagePressed, super.key});

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final _inputFocusNode = FocusNode();
  final _textEditingController = TextEditingController();
  bool _sendButtonVisible = false;
  void _handleSendButtonVisibilityModeChange() {
    _textEditingController.removeListener(_handleTextControllerChange);
    _sendButtonVisible = _textEditingController.text.trim() != '';
    _textEditingController.addListener(_handleTextControllerChange);
  }

  void _handleTextControllerChange() {
    setState(() {
      _sendButtonVisible = _textEditingController.text.trim() != '';
    });
  }

  void _handleSendPressed() {
    final trimmedText = _textEditingController.text.trim();
    if (trimmedText != '') {
      widget.onSendMessagePressed(trimmedText);
      _textEditingController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _inputFocusNode.requestFocus(),
      child: Focus(
        autofocus: true,
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: MediaQuery.of(context).viewInsets,
          curve: Curves.decelerate,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 12,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5))),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextField(
                            selectionControls: MaterialTextSelectionControls(),
                            focusNode: _inputFocusNode,
                            controller: _textEditingController,
                            maxLines: 5,
                            maxLength: 4096,
                            minLines: 1,
                            onChanged: (input) {
                              // context
                              //     .read<ChatBloc>()
                              //     .add(ChatEvent.messageChanged(input));
                            },
                            textCapitalization: TextCapitalization.sentences,
                            keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                              isDense: true,
                              hintText: "Message",
                              border: InputBorder.none,
                              prefix: SizedBox(width: 16),
                              counterText: "",
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontSize: 14),
                          ),
                        ),
                        // GalleryAttachmentButton(
                        //   onPressed: widget.onPessedGallery,
                        // ),
                        // CameraAttachmentButton(
                        //   onPressed: widget.onPressedCamera,
                        // ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SendMessageButton(
                  isMessageEmpty: !_sendButtonVisible,
                  onSendMessage: _handleSendPressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
