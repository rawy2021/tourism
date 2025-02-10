import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';


class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super (AuthInitial());
   String? firstName;
   String? lastName;
   String? emailAddress;
   String? password;

  signUpEmailAndPassword() async{
    try {
      emit(SignUpLoadingState());
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(errorMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailureState(errorMessage: e.toString()));
    }

  }

}

