import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/chalet_card.dart';

import 'hotel_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 150.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
            return HotelCard();
          },),
        ),
        Expanded(child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ChaletCard();
          },),
        )
      ],
    );
  }
}
