import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/helper/date_formater.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/model/chat_group_model.dart';
import 'package:tyarineetki/screens/chat/chat_screen.dart';
import 'package:tyarineetki/screens/chat/view_model/chat_view_model.dart';
import 'package:tyarineetki/screens/chat_group_list/chat_room.dart';
import 'package:tyarineetki/screens/chat_group_list/view_model/chat_group_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class ChatGroupList extends StatefulWidget {
  const ChatGroupList({super.key});

  @override
  State<ChatGroupList> createState() => _ChatGroupListState();
}

class _ChatGroupListState extends State<ChatGroupList> {
  late ChatGroupViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<ChatGroupViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [appBar(), const Gap(20), chatList()],
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chats',
                  style: TextStyle(
                      color: AppColor.primaryOrangeColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Group Discussion',
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget chatList() {
    return StreamBuilder(
        stream: viewModel.fetchGroupList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade400),
                        child: const Center(
                          child: CupertinoActivityIndicator(),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            );
          }

          if (snapshot.hasError) {
            return const SizedBox();
          }

          if (!snapshot.hasData) {
            return const SizedBox();
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(snapshot.data!.size, (index) {
                      Map<String, dynamic> jso = snapshot.data!.docs[index]
                          .data() as Map<String, dynamic>;
                      ChatGroupModel item = ChatGroupModel.fromJson(jso,snapshot.data!.docs[index].id);
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                          onTap: () {
                            NavigationHelper().navigatePush(
                                context: context,
                                viewModel:
                                    ChatViewModel.argument(groupModel: item),
                                screen: const ChatScreen());
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 4, right: 4, top: 4, bottom: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomCacheImage(
                                  imageUrl: item.groupLogo,
                                  borderRadius: BorderRadius.circular(100),
                                  width: 50,
                                  height: 50,
                                  border: Border.all(
                                      width: 1, color: Colors.grey.shade300),
                                  showBorder: true,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            '${item.groupName}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                        if (item.lastChatTime != null)
                                          Text(
                                            DateFormat("hh:mm a").format(
                                                item.lastChatTime!.toDate()),
                                            style: const TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '${item.lastChatUserName} : ${item.lastMessage}',
                                      style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.group,
                                          size: 12,
                                          color: Colors.green,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          '${item.totalMemberJoined}',
                                          style: const TextStyle(
                                            color: Colors.green,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.info_outline,
                                          size: 12,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Divider(
                                      height: 1,
                                      color: Colors.black26,
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          );
        });
  }
}
