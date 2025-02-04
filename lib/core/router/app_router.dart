import 'package:go_router/go_router.dart';
import 'package:projecttest/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:projecttest/features/splash/presentation/view/splash_screen.dart';

final GoRouter router = GoRouter(routes: [

  GoRoute(path: "/",
  builder: (context , state) => const SplashScreen(),
  ),
  GoRoute(path: "/onBoarding",
    builder: (context , state) => const OnBoardingView(),
  ),
]);