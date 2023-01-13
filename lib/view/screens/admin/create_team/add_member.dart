import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';
import 'package:the_powder_room_guys/view/widget/tag_person.dart';

class AddMember extends StatefulWidget {
  @override
  State<AddMember> createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
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
        bgColor: kSecondaryColor,
        title: 'Add member',
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: DEFAULT_PADDING,
        children: [
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
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return MemberTile(
                url: dummyImg,
                name: 'Josiah Zayner',
                isSelected: index == 0,
              );
            },
          )
        ],
      ),
    );
  }
}

class MemberTile extends StatelessWidget {
  const MemberTile({
    Key? key,
    required this.url,
    required this.name,
    required this.isSelected,
  }) : super(key: key);

  final String url, name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Row(
        children: [
          CommonImageView(
            height: 40,
            width: 40,
            radius: 100.0,
            url: url,
          ),
          Expanded(
            child: MyText(
              paddingLeft: 8,
              text: name,
              size: 14,
              color: kGrey10Color,
            ),
          ),
          if (isSelected)
            Image.asset(
              Assets.imagesSelected,
              height: 24,
            ),
        ],
      ),
    );
  }
}
