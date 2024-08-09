import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'chalets_description.dart';
import 'chalets_location.dart';
import 'checkable_calendar.dart';
import 'custom_carousel_slider.dart';
import 'custom_divider.dart';
import 'icone_with_badge.dart';

class ChaletDetailsViewBody extends StatefulWidget {
  const ChaletDetailsViewBody({super.key});

  @override
  _ChaletDetailsViewBodyState createState() => _ChaletDetailsViewBodyState();
}

class _ChaletDetailsViewBodyState extends State<ChaletDetailsViewBody> {
  bool _isCalendarVisible = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomCarouselSlider(),
        CustomDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconeWithBadge(),
            IconeWithBadge(),
            IconeWithBadge(),
            IconeWithBadge(),
            IconeWithBadge(),
            IconeWithBadge(),
          ],
        ),
        CustomDivider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _isCalendarVisible = !_isCalendarVisible;
              });
            },
            child: Text(
              _isCalendarVisible ? 'أغلاق قائمة المواعيد' : 'أختيار مواعيد الحجز',
              style: TextStyle(color: _isCalendarVisible ?Colors.red:Colors.green),
            ),
          ),
        ),
        if (_isCalendarVisible)
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 5.h),
              child: Container(
                child: CheckableCalendar(),
              ),
            ),
          ),
        CustomDivider(),
        ChaletsDescription(),
        CustomDivider(),
        ChaletsLocation(),
      ],
    );
  }
}


