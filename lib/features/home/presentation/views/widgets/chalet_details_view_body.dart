import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_carousel_slider.dart';
import 'icone_with_badge.dart';

class ChaletDetailsViewBody extends StatelessWidget {
  const ChaletDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomCarouselSlider(),
        Divider(
          thickness: 0.5,
          color: Colors.grey,
          indent: 30,
          endIndent: 30,
        ),
        SizedBox(
          height: 40.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              IconeWithBadge(),
            ],
          ),
        )
      ],
    );
  }
}

