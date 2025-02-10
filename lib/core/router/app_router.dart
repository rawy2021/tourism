import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:projecttest/core/services/service_locator.dart';
import 'package:projecttest/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:projecttest/features/auth/presentation/view/sign_up_view.dart';
import 'package:projecttest/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:projecttest/features/splash/presentation/view/splash_screen.dart';

import '../../features/auth/presentation/view/sing_in_view.dart';

final GoRouter router = GoRouter(routes: [

  GoRoute(path: "/",
  builder: (context , state) => const SplashScreen(),
  ),
  GoRoute(path: "/onBoarding",
    builder: (context , state) => const OnBoardingView(),
  ),
  GoRoute(path: "/signUpView",
    builder: (context , state) => BlocProvider(
      create: (context)=> getIT<AuthCubit>(),
        child: const SignUpView()),
  ),
  GoRoute(path: "/signInView",
    builder: (context , state) => BlocProvider(
        create: (context)=> getIT<AuthCubit>(),
        child: const SingInView()),
  ),
]);