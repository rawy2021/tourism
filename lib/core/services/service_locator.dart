
import 'package:get_it/get_it.dart';
import 'package:projecttest/features/auth/presentation/auth_cubit/auth_cubit.dart';

final getIT = GetIt.instance;
void setupServiceLocator(){
 // getIT.registerSingleton<CacheHelper>(CacheHelper());
  //getIT.registerSingleton<AuthCubit>(AuthCubit());
  getIT.registerLazySingleton<AuthCubit>(() => AuthCubit());

}

