import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.5,
      color: Colors.grey,
      indent: 10,
      endIndent: 10,
    );
  }
}
