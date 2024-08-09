import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../photo_gallery_view.dart';

class ChaletPhotosViewBody extends StatelessWidget {
  const ChaletPhotosViewBody({super.key, required this.urlImages});
  final List<String> urlImages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: urlImages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(0.5),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotoGalleryView(
                    images: urlImages,
                    initialIndex: index,
                  ),
                ),
              );
            },
            child: Image.network(urlImages[index]),
          ),
        );
      },
    );
  }
}
