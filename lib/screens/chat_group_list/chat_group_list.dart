import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:tyarineetki/helper/date_formater.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/screens/chat_group_list/chat_room.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class ChatGroupList extends StatefulWidget {
  const ChatGroupList({super.key});

  @override
  State<ChatGroupList> createState() => _ChatGroupListState();
}

class _ChatGroupListState extends State<ChatGroupList> {
  final bool isSearchShow = true;
  List<String> filteredItems = [];
  TextEditingController searchController = TextEditingController();
  List<String> items = [
    'Daniel Richard',
    'Subham',
    'Alice',
    'Bob',
    'sanjay',
    'rajat',
    'pankaj',
    'nikhil',
    'subh',
    'pradeep',
    'sagar'
  ];

  @override
  void initState() {
    super.initState();
    filteredItems.addAll(items);
  }

  void filterItems(String query) {
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (_, bool v) => [
                    SliverAppBar(
                      elevation: 0,
                      backgroundColor: const Color(0xfffcfcfc),
                      automaticallyImplyLeading: false,
                      shadowColor: Colors.red,
                      title: const Text("Chat",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      centerTitle: false,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              left: 10,
                              right: 10,
                              bottom: 8,
                              child: isSearchShow
                                  ? InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xFFE0E0E0)
                                                  .withOpacity(0.6)),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            IconButton(
                                                splashRadius: 20,
                                                padding: EdgeInsets.zero,
                                                onPressed: () {},
                                                icon: const Icon(
                                                  FluentIcons.search_24_regular,
                                                )),
                                            Expanded(
                                              child: TextField(
                                                controller: searchController,
                                                selectionControls:
                                                    MaterialTextSelectionControls(),
                                                maxLength: 50,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: "Search",
                                                        border:
                                                            InputBorder.none,
                                                        counterText: ''),
                                                onChanged: (val) {
                                                  filterItems(val);
                                                },
                                                onSubmitted: (val) {
                                                  filterItems(val);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : const SizedBox(),
                            ),
                          ],
                        ),
                      ),
                      pinned: true,
                      floating: true,
                      expandedHeight: isSearchShow ? kToolbarHeight * 2 : null,
                    ),
                  ],
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                NavigationHelper().normalNavigatePush(
                                    context: context,
                                    screen: ChatRoom(
                                      titleText: filteredItems[index],
                                    ));
                              },
                              child: ListTile(
                                contentPadding:
                                    const EdgeInsets.only(left: 24, right: 16),
                                minVerticalPadding: 10,
                                leading: CustomCacheImage(
                                  width: 50,
                                  height: 50,
                                  borderRadius: BorderRadius.circular(50),
                                  fit: BoxFit.cover,
                                  imageUrl:
                                      'https://thumbs.dreamstime.com/z/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg?w=992',
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Text(filteredItems[index],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Color(0xff121212))),
                                ),
                                subtitle: const Padding(
                                  padding: EdgeInsets.only(bottom: 4),
                                  child: Text("Hanging out will a lll",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff121212))),
                                ),
                                trailing: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5.0),
                                        child: FittedBox(
                                          fit: BoxFit.fitHeight,
                                          child: AutoSizeText(
                                              DateFormatter(context)
                                                  .getContactListDateTimeString(
                                                      localDateTime:
                                                          DateTime.now()),
                                              minFontSize: 10,
                                              maxFontSize: 16,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xff808080))),
                                        )),
                                    const Icon(Icons.offline_pin)
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(
                              height: 0,
                              indent: 75,
                              thickness: 1,
                              color: Color(0xffbdbdbd)),
                          itemCount: filteredItems.length))
                ],
              ))),
    );
  }
}
