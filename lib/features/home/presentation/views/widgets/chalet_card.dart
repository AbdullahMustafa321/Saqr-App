import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:saqr_app/core/utils/app_router.dart';

class ChaletCard extends StatelessWidget {
  const ChaletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kChaletDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              color: Colors.redAccent,
              child: Image.asset('assets/images/onboarding1.png',fit: BoxFit.cover,),
            ),
            Text('شاليه الاميرة',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
            Opacity(
              opacity: 0.5,
                child: Text(
                  maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'يطل علي البحر ومكون من اربع غرف وحمام سباحة خاص وحديقة خاصة واماكن للشوي والاسترخاء'))
          ],
        ),
      ),
    );
  }
}
