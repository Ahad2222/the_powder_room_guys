import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_event/add_task_member.dart';
import 'package:the_powder_room_guys/view/widget/custom_drop_down.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';
import 'package:the_powder_room_guys/view/widget/tag_person.dart';

class CreateNewTask extends StatefulWidget {
  @override
  State<CreateNewTask> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
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
        title: 'Create task',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: DEFAULT_PADDING,
              children: [
                MyTextField(
                  label: 'Event name',
                  hintText: 'Type here',
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyTextField(
                        label: 'Start date',
                        hintText: 'Today',
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MyTextField(
                        label: 'Start time',
                        hintText: 'Now',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyTextField(
                        label: 'End date',
                        hintText: '25/01/2023',
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MyTextField(
                        label: 'Start time',
                        hintText: '09:00 am',
                      ),
                    ),
                  ],
                ),
                CustomDropDown(
                  heading: 'Repeat',
                  items: [
                    'Never',
                  ],
                  onChanged: (v) {},
                ),
                MyText(
                  text: 'Add attachment',
                  fontFamily: SF_UI_COMPACT,
                  size: 12,
                  weight: FontWeight.w500,
                  paddingBottom: 4,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1.0,
                      color: kGrey2Color,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.imagesUploadHere,
                      height: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
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
                                                onTap: () => Get.to(
                                                    () => AddTaskMember()),
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
                                    onTap: () => Get.to(() => AddTaskMember()),
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
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: MyButton(
              buttonText: 'Create',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
