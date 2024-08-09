import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saqr_app/features/home/presentation/views/chalete_photos_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({
    super.key,
  });

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int activeIndex = 0;
  final urlImages = [
    'https://www.amevet.fr/wp-content/uploads/2017/06/1-Chalet-Meribel-Amdeco.jpg',
    'https://www.amevet.fr/wp-content/uploads/2017/06/3-Chalet-Meribel-Amdeco.jpg',
    'https://www.amevet.fr/wp-content/uploads/2017/06/4-Chalet-Meribel-Amdeco.jpg',
    'https://www.amevet.fr/wp-content/uploads/2017/06/5-Chalet-Meribel-Amdeco.jpg',
    'https://www.amevet.fr/wp-content/uploads/2017/06/6-Chalet-Meribel-Amdeco.jpg',
    'https://www.amevet.fr/wp-content/uploads/2017/06/9-Chalet-Meribel-Amdeco.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realindex) {
            final urlImage = urlImages[index];
            return buildImage(urlImage, index);
          },
          options: CarouselOptions(
            height: 170.h,
            onPageChanged: (index, reason) => setState(() => activeIndex = index,
            ),
          ),
        ),
        Positioned(
          left: 90.w,
          top: 150.h,
            child: buildIndicator())
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        effect: ExpandingDotsEffect(dotWidth: 15.w),
        activeIndex: activeIndex,
        count: urlImages.length,
      );
  Widget buildImage(String urlImage, int index) => GestureDetector(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChaletPhotosView(urlImages: urlImages),));
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );

}

