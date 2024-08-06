import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        ),
        drawer: NavigationDrawerWidget(),
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}
