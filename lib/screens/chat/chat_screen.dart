import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mime/mime.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/screens/chat/view_model/chat_view_model.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';
import 'package:uuid/uuid.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  late ChatViewModel viewModel;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<ChatViewModel>();
  }

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Photo'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleFileSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    viewModel.addNewMessage(body: textMessage.toJson());
    _addMessage(textMessage);
  }

  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    setState(() {
      _messages = messages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          leadingWidth: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    const Icon(Icons.arrow_back_rounded),
                    const SizedBox(
                      width: 6,
                    ),
                    CustomCacheImage(
                      width: 40,
                      height: 40,
                      borderRadius: BorderRadius.circular(100),
                      imageUrl:
                          'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'General Talk',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '145 Members',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        height: 1,
                        color: Colors.green),
                  )
                ],
              ))
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
            const SizedBox(
              width: 12,
            )
          ],
        ),
        body: mainView());
  }

  Widget mainView() {
    return Chat(
      messages: _messages,
      onAttachmentPressed: _handleAttachmentPressed,
      onMessageTap: _handleMessageTap,
      onPreviewDataFetched: _handlePreviewDataFetched,
      onSendPressed: _handleSendPressed,
      showUserAvatars: true,
      showUserNames: true,
      // customBottomWidget: Container(
      //   width: double.infinity,
      //   padding: EdgeInsets.only(top: 6,bottom: 6,left: 12,right: 12),
      //   decoration: const BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey,
      //         blurRadius: 10.0,
      //         offset: Offset(0.0, 5),
      //       ),
      //     ],
      //   ),
      //   child: Row(
      //     children: [
      //       InkWell(
      //         onTap: () {},
      //         child: Container(
      //           padding: const EdgeInsets.all(6),
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(100),
      //               color: Colors.grey.shade200),
      //           child: const Icon(Icons.attach_file),
      //         ),
      //       ),
      //       Expanded(child: child)
      //     ],
      //   ),
      // ),
      hideBackgroundOnEmojiMessages: false,
      user: _user,
    );
  }
}
