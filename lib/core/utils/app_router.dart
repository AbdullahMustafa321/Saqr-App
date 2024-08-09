import 'package:go_router/go_router.dart';
import 'package:saqr_app/features/home/presentation/views/chalet_details_view.dart';
import 'package:saqr_app/features/home/presentation/views/village_view.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static String kHomeView = '/HomeView';
  static String kOnBoardingView = '/OnBoarding';
  static String kChaletDetailsView = '/ChaletDetailsView';
  static String kVillageView = '/VillageView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kOnBoardingView,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: kChaletDetailsView,
      builder: (context, state) => const ChaletDetailsView(),
    ),
    GoRoute(
      path: kVillageView,
      builder: (context, state) => const VillageView(),
    ),
  ]);
}
