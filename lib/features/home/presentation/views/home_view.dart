import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/navigation_drawer_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
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
        ),
        drawer: NavigationDrawerWidget(),
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}
