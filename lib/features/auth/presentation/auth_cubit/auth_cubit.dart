import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';


class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super (AuthInitial());
   String? firstName;
   String? lastName;
   String? emailAddress;
   String? password;
   GlobalKey<FormState> signUpFormKey = GlobalKey();
   GlobalKey<FormState> signInFormKey = GlobalKey();
   bool? termsAndConditionCheckBoxValue =false;
   bool? obscurePasswordTextValue  = true;

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
      print(e.toString());
      emit(SignUpFailureState(errorMessage: e.toString()));
    }

  }

  updateTermsAndConditionCheckBox({required newValue}){
    termsAndConditionCheckBoxValue=newValue;
    emit(TermsAndConditionUpdateState());
  }

  void obscurePasswordText(){
    if(obscurePasswordTextValue ==true){
      obscurePasswordTextValue =false;
    }else{
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  signInEmailAndPassword() async{
    try {
      emit(SignInLoadingState());
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'User Not Found') {
        emit(SignInFailureState(errorMessage: 'Not User Fount To This Email'));
      } else if (e.code == 'Wrong Password') {
        emit(SignInFailureState(errorMessage: 'Wrong Password To User.'));
      }else{
        emit(SignInFailureState(errorMessage: 'Check Your Email And Password.'));

      }

    } catch (e) {
      emit(SignInFailureState(errorMessage: e.toString()));
    }
  }



}

