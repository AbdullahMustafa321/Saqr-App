import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
    );
  }
}
