import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconeWithBadge extends StatelessWidget {
  const IconeWithBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(Icons.bedroom_parent_rounded,size: 38.sp,),
        Positioned(
          left: 25.w,
          bottom: 25.h,
          child: CircleAvatar(
            radius: 10.r,
            backgroundColor: Colors.green,
            child: Text('5'),
          ),
        ),

      ],
    );
  }
}
