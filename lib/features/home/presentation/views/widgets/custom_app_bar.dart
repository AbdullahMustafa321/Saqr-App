import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.only(right: 30.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Saqr',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(width: 5.w,),
            Image.asset('assets/images/app_icon.png',width: 30.w,height: 30.h,)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
