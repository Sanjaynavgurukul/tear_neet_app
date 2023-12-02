import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/cupertino.dart';
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
  List<types.Message> list = [];
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
    _messages.insert(0, message);
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
        author: viewModel.user,
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
        author: viewModel.user,
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

          _messages[index] = updatedMessage;

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

    // setState(() {
    _messages[index] = updatedMessage;
    // });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: viewModel.user,
      // createdAt: DateTime.now().millisecondsSinceEpoch,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    log('check demo ---- ${textMessage.toJson()}');
    // _addMessage(textMessage);
    Map<String,dynamic> body = textMessage.toJson();
    body.addAll({'timeStamp':body['createdAt'],});
    viewModel.addNewMessage(body: body);
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
  Widget build(BuildContext context) => Scaffold(
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
                    imageUrl: viewModel.groupModel!.groupLogo,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '${viewModel.groupModel!.groupName}',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${viewModel.groupModel!.totalMemberJoined} Members',
                  style: const TextStyle(
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
      body: mainList());

  List<types.Message> convertQuerySnapshotToList(QuerySnapshot querySnapshot) {
    return querySnapshot.docs
        .map(
            (doc) => types.Message.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }

  Widget mainList() {
    return StreamBuilder(
        stream: viewModel.fetchList(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if(snapshot.connectionState == ConnectionState.none || snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }

          List<types.Message> yourObjectList =
              convertQuerySnapshotToList(snapshot.data!);

          return Chat(
            messages: yourObjectList,
            onAttachmentPressed: _handleAttachmentPressed,
            onMessageTap: _handleMessageTap,
            onPreviewDataFetched: _handlePreviewDataFetched,
            onSendPressed: _handleSendPressed,
            showUserAvatars: true,
            showUserNames: true,
            user: viewModel.user,
            theme: const DefaultChatTheme(
              seenIcon: Text(
                'read',
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ),
          );
        });
  }
}

class _ChatScreenStates extends State<ChatScreen> {
  List<types.Message> _messages = [];
  FirestoreQueryBuilderSnapshot<types.Message?>? snapshot;
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
    _messages.insert(0, message);
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
        author: viewModel.user,
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
        author: viewModel.user,
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
      author: viewModel.user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    viewModel.addNewMessage(body: textMessage.toJson());
    _addMessage(textMessage);
  }

  void _loadMessages() async {}

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
                      imageUrl: viewModel.groupModel!.groupLogo,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${viewModel.groupModel!.groupName}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${viewModel.groupModel!.totalMemberJoined} Members',
                    style: const TextStyle(
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
    return FirestoreQueryBuilder<types.Message?>(
      pageSize: 70,
      query: FirebaseFirestore.instance
          .collection('conversation')
          .doc(viewModel.groupModel!.groupId)
          .collection('chats')
          .withConverter(
            fromFirestore: (snapshot, _) {
              Map<String, dynamic> body =
                  snapshot.data() as Map<String, dynamic>;
              return types.Message.fromJson(body);
            },
            toFirestore: (data, _) => data!.toJson(),
          ),
      builder: (ctx, snap, _) {
        if (snap.isFetching) {
          return const CupertinoActivityIndicator();
        }
        // snapshot = snap;

        List<types.Message> messages = snap.docs.map((s) {
          return s.data() != null
              ? s.data()!
              : types.Message.fromJson(s.data() as Map<String, dynamic>);
        }).toList();

        return Chat(
          messages: messages,
          onAttachmentPressed: _handleAttachmentPressed,
          onMessageTap: _handleMessageTap,
          onPreviewDataFetched: _handlePreviewDataFetched,
          onSendPressed: _handleSendPressed,
          showUserAvatars: true,
          showUserNames: true,
          hideBackgroundOnEmojiMessages: false,
          user: viewModel.user,
        );
      },
    );
  }

  Widget m() {
    return FirestoreQueryBuilder<types.Message?>(
      pageSize: 70,
      query: FirebaseFirestore.instance
          .collection('conversation')
          .doc(viewModel.groupModel!.groupId)
          .collection('chats')
          .withConverter(
            fromFirestore: (snapshot, _) {
              Map<String, dynamic> body =
                  snapshot.data() as Map<String, dynamic>;
              int tim = DateTime.now().microsecondsSinceEpoch;
              Timestamp? timestamp = body['createdAt'];
              if (timestamp != null) {
                tim = timestamp.toDate().microsecondsSinceEpoch;
              }
              body['createdAt'] = tim;

              return types.Message.fromJson(body);
            },
            toFirestore: (data, _) => data!.toJson(),
          ),
      builder: (ctx, snap, _) {
        if (snap.isFetching) {
          return const CupertinoActivityIndicator();
        }
        // snapshot = snap;

        List<types.Message> messages = snap.docs!
            .map((s) => s.data() != null
                ? s.data()!
                : types.Message.fromJson(s.data() as Map<String, dynamic>))
            .toList();

        return Chat(
          messages: messages,
          onAttachmentPressed: _handleAttachmentPressed,
          onMessageTap: _handleMessageTap,
          onPreviewDataFetched: _handlePreviewDataFetched,
          onSendPressed: _handleSendPressed,
          showUserAvatars: true,
          showUserNames: true,
          hideBackgroundOnEmojiMessages: false,
          user: viewModel.user,
        );
      },
    );
  }
}
