import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingCard extends StatelessWidget {
  const OnBoardingCard({super.key, required this.image, required this.title, required this.description, required this.buttonText, required this.onPressed});

  final String image,title,description,buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.80,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(50.r),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp),
              ),
              Padding(
                padding: EdgeInsets.all(10.r),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15.sp),
                ),
              ),
            ],
          ),
          MaterialButton(
            minWidth: 300,
            onPressed: onPressed,
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              buttonText,
            ),
          )
        ],
      ),
    );
  }
}
