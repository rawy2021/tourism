import 'package:go_router/go_router.dart';
import 'package:projecttest/features/splash/presentation/view/splash_screen.dart';

final GoRouter router = GoRouter(routes: [

  GoRoute(path: "/",
  builder: (context , state) => const SplashScreen(),
  )
]);