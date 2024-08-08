import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/navigation_drawer_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  PopScope(
      canPop: false,
      child: Scaffold(
        appBar: CustomAppBar(),
        drawer: NavigationDrawerWidget(),
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}

