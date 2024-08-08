import 'package:flutter/material.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/chalet_details_view_body.dart';
import 'package:saqr_app/features/home/presentation/views/widgets/custom_app_bar.dart';

class ChaletDetailsView extends StatelessWidget {
  const ChaletDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: ChaletDetailsViewBody(),
    );
  }
}
