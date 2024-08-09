import 'package:flutter/material.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'widgets/chalet_photos_view_body.dart';

class ChaletPhotosView extends StatelessWidget {
  const ChaletPhotosView({super.key, required this.urlImages});
  final List<String> urlImages;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(),
      body: ChaletPhotosViewBody(urlImages: urlImages,),
    );
  }
}
