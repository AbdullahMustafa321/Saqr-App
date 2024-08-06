import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SplashViewBody(),
    );
  }
}
