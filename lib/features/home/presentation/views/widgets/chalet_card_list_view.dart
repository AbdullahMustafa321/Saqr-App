import 'package:flutter/cupertino.dart';

import 'chalet_card.dart';

class ChaletCardListView extends StatelessWidget {
  const ChaletCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ChaletCard();
      },);
  }
}
