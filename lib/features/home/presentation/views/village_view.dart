import 'package:flutter/material.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/village_view_body.dart';

class VillageView extends StatelessWidget {
  const VillageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: VillageViewBody(),
    );
  }
}
