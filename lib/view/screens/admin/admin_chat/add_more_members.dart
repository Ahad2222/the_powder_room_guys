import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/admin/create_team/add_member.dart';
import 'package:the_powder_room_guys/view/widget/custom_drop_down.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';
import 'package:the_powder_room_guys/view/widget/simple_switch_tile.dart';
import 'package:the_powder_room_guys/view/widget/tag_person.dart';

class AddMoreMembers extends StatefulWidget {
  @override
  State<AddMoreMembers> createState() => _AddMoreMembersState();
}

class _AddMoreMembersState extends State<AddMoreMembers> {
  double? _distanceToField;

  TextfieldTagsController? _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToField = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TextfieldTagsController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Add member',
        bgColor: kSecondaryColor,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: DEFAULT_PADDING,
        physics: BouncingScrollPhysics(),
        children: [
          CustomDropDown(
            heading: 'Member type',
            items: [
              'Guest',
              '2',
              '3',
              '4',
            ],
            onChanged: (v) {},
          ),
          MyText(
            text: 'Assign',
            fontFamily: SF_UI_COMPACT,
            size: 12,
            weight: FontWeight.w500,
            paddingBottom: 4,
          ),
          TextFieldTags(
            textfieldTagsController: _controller,
            textSeparators: const [' ', ','],
            letterCase: LetterCase.normal,
            validator: (String tag) {
              if (tag == 'php') {
                return 'No, please just no';
              } else if (_controller!.getTags!.contains(tag)) {
                return 'you already entered that';
              }
              return null;
            },
            inputfieldBuilder: (
              context,
              tec,
              fn,
              error,
              onChanged,
              onSubmitted,
            ) {
              return ((
                context,
                sc,
                tags,
                onTagDelete,
              ) {
                return Stack(
                  children: [
                    TextField(
                      readOnly: true,
                      controller: tec,
                      focusNode: fn,
                      style: TextStyle(
                        fontFamily: SF_UI_DISPLAY,
                        fontSize: 12,
                        color: kTextColor,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: kGrey2Color,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: kGrey2Color,
                            width: 1.0,
                          ),
                        ),
                        hintStyle: TextStyle(
                          fontFamily: SF_UI_DISPLAY,
                          fontSize: 12,
                          color: kGrey2Color,
                        ),
                        errorText: error,
                        prefixIconConstraints: BoxConstraints(
                          maxWidth: _distanceToField! * 0.74,
                        ),
                        prefixIcon: tags.isNotEmpty
                            ? SingleChildScrollView(
                                controller: sc,
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    tags.isNotEmpty ? tags.length + 1 : 1,
                                    (index) {
                                      if (index < tags.length) {
                                        return TagPerson(
                                          name: tags[index],
                                          img: dummyImg,
                                          onRemove: () => onTagDelete(
                                            tags[index],
                                          ),
                                        );
                                      } else {
                                        return MyText(
                                          onTap: () =>
                                              Get.to(() => AddMember()),
                                          text: '1+',
                                          size: 12,
                                          weight: FontWeight.w500,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              )
                            : null,
                      ),
                      onChanged: onChanged,
                      onSubmitted: onSubmitted,
                    ),
                    tags.length > 0
                        ? SizedBox()
                        : Positioned(
                            left: 15,
                            top: 15,
                            child: MyText(
                              onTap: () => Get.to(() => AddMember()),
                              text: '1+',
                              size: 12,
                              weight: FontWeight.w500,
                            ),
                          ),
                  ],
                );
              });
            },
          ),
          SizedBox(
            height: 8,
          ),
          SimpleSwitchTile(
            title: 'Allow members to add other members',
            value: false,
            onToggle: (v) {},
          ),
          SimpleSwitchTile(
            title: 'Allow members to post message',
            value: false,
            onToggle: (v) {},
          ),
          SimpleSwitchTile(
            title: 'Allow members to @team mention',
            value: false,
            onToggle: (v) {},
          ),
          SimpleSwitchTile(
            title: 'Allow members to pin post',
            value: false,
            onToggle: (v) {},
          ),
          SimpleSwitchTile(
            title: 'Allow members to add apps',
            value: false,
            onToggle: (v) {},
          ),
          SizedBox(
            height: 40,
          ),
          MyButton(
            buttonText: 'Invite',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
