import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class MyExpandableTiles extends StatelessWidget {
  MyExpandableTiles({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);
  final String title;
  final List<MyExpandableTileItem> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kShadowColor.withOpacity(0.05),
            blurRadius: 15,
            offset: Offset(0, 0),
          ),
        ],
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.fromLTRB(15, 16, 3, 16),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ExpandableNotifier(
          child: ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: ExpandableThemeData(
                iconSize: 26,
                iconColor: kTextColor,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: MyText(
                fontFamily: POPPINS,
                text: '$title',
                color: kTextColor,
              ),
              collapsed: SizedBox(),
              expanded: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                children: children,
              ),
              builder: (_, collapsed, expanded) {
                return Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(
                    crossFadePoint: 0,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MyExpandableTileItem extends StatelessWidget {
  const MyExpandableTileItem({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return MyText(
      paddingTop: 16,
      text: value,
      size: 12,
      fontFamily: POPPINS,
      color: kTextColor.withOpacity(0.9),
    );
  }
}
