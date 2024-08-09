import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:saqr_app/core/utils/app_router.dart';

class VillageCard extends StatelessWidget {
  const VillageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kVillageView);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end
          ,
          children: [
            Container(
              width: 200.w,
              color: Colors.redAccent,
              child: Image.asset('assets/images/onboarding1.png'),
            ),
            Text('قرية الاهرام')
          ],
        ),
      ),
    );
  }
}
