import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:saqr_app/core/theme/theme_provider.dart';
import 'package:saqr_app/core/utils/app_router.dart';
import 'package:saqr_app/features/on_boarding/presentation/views/widgets/on_boarding_card.dart';

import 'custom_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  static final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _buildOnBoardingPages(BuildContext context) {
    return [
      OnBoardingCard(
        image: 'assets/images/logo2.png',
        title: 'مرحبًا بك في Saqr',
        description: 'اكتشف تجربة بحث فريدة مع Saqr.\n استكشف مجموعتنا الواسعة من الشاليهات الممتازة واحصل على أفضل العروض والجودة.',
        buttonText: 'التالي',
        onPressed: () {
          Provider.of<ThemeProvider>(context,listen: false).toggleThem();
          _pageController.animateToPage(
            1,
            duration: Durations.long1,
            curve: Curves.linear,
          );
        },
      ),
      OnBoardingCard(
        image: 'assets/images/logo2.png',
        title: 'فنادق & شاليهات',
        description: 'نقدم لك افضل الشاليهات والفنادق \n وافضل الخدمات',
        buttonText: 'التالي',
        onPressed: () {
          _pageController.animateToPage(
            2,
            duration: Durations.long1,
            curve: Curves.linear,
          );
        },
      ),
      OnBoardingCard(
        image: 'assets/images/logo2.png',
        title: 'ابدأ رحلتك',
        description: 'احصل علي الشاليه المناسب لرغباتك',
        buttonText: 'البدء',
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kHomeView);
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: PageView(
            controller: _pageController,
            children: _buildOnBoardingPages(context),
          )),
          CustomPageIndicator(pageController: _pageController),
        ],
      ),
    );
  }
}

