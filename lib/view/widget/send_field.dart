import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';

class SendField extends StatelessWidget {
  SendField({
    Key? key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onTap,
    this.validator,
    this.onAttachmentTap,
    this.onEmojiTap,
    this.onSendTap,
  }) : super(key: key);
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onEmojiTap, onAttachmentTap, onSendTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            border: Border(
              top: BorderSide(
                color: kGrey1Color,
                width: 1.0,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: TextFormField(
                        cursorColor: kBlackColor,
                        textAlignVertical: TextAlignVertical.center,
                        controller: controller,
                        onTap: onTap,
                        onChanged: onChanged,
                        validator: validator,
                        autovalidateMode: AutovalidateMode.always,
                        cursorWidth: 1.0,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor,
                          fontFamily: POPPINS,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kGrey1Color,
                          hintText: 'Type your message',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: kGrey5Color,
                            fontFamily: POPPINS,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          prefixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: onEmojiTap,
                                child: Image.asset(
                                  Assets.imagesEmoji,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          suffixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: onAttachmentTap,
                                child: Image.asset(
                                  Assets.imagesAttachments,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: onSendTap,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kTextColor,
                      ),
                      child: Center(
                        child: Image.asset(
                          Assets.imagesSend,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SimpleSendField extends StatelessWidget {
  SimpleSendField({
    Key? key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onTap,
    this.validator,
    this.onAttachmentTap,
    this.onEmojiTap,
    this.onSendTap,
  }) : super(key: key);
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onEmojiTap, onAttachmentTap, onSendTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: TextFormField(
              cursorColor: kBlackColor,
              controller: controller,
              onTap: onTap,
              onChanged: onChanged,
              validator: validator,
              autovalidateMode: AutovalidateMode.always,
              cursorWidth: 1.0,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBlackColor,
                fontFamily: POPPINS,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: kGrey1Color,
                hintText: 'Type your message',
                hintStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: kGrey5Color,
                  fontFamily: POPPINS,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: onSendTap,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kTextColor,
            ),
            child: Center(
              child: Image.asset(
                Assets.imagesSend,
                height: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
