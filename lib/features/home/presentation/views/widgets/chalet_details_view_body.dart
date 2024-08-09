import 'package:flutter/cupertino.dart';

import 'custom_carousel_slider.dart';

class ChaletDetailsViewBody extends StatelessWidget {
  const ChaletDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          CustomCarouselSlider()
        ],
      ),
    );
  }
}
