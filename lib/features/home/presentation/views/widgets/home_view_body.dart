import 'package:flutter/cupertino.dart';
import 'chalet_card_list_view.dart';
import 'village_card_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        VillageCardListView(),
        Expanded(child: ChaletCardListView(),
        )
      ],
    );
  }
}


