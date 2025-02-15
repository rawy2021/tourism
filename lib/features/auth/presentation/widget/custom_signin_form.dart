import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projecttest/core/utils/app_color.dart';
import 'package:projecttest/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:projecttest/features/auth/presentation/auth_cubit/auth_state.dart';
import '../../../../core/function/custom_toast.dart';
import '../../../../core/function/navigation.dart';
import '../../../../core/widgets/custom_btn.dart';
import 'custom_text_filed.dart';
import 'forgot_password.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AuthCubit,AuthState>(
        listener: (context,state){
          if(state is SignInSuccessState){
            showToastMessage("Welcome Back ");
            customNavigateReplacement(context, "/home");
          }else if(state is SignInFailureState){
            showToastMessage(state.errorMessage);
          }
        },
        builder: (context,state){
          AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
          return Form(
              key: authCubit.signInFormKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomTextFormField(labelText: 'email',
                      onChanged: (emailAddress){
                        authCubit.emailAddress = emailAddress;
                      },
                    ),
                    CustomTextFormField(
                      labelText: 'password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          authCubit.obscurePasswordTextValue == true?
                          Icons.visibility
                              :Icons.visibility_off,
                        ),
                        onPressed: (){
                          authCubit.obscurePasswordText();
                        },
                      ),
                      obscureText: authCubit.obscurePasswordTextValue,
                      onChanged: (password){
                        authCubit.password = password;
                      },
                    ),
                    const SizedBox(height: 10,),
                     const ForgotPassword(),
                    const SizedBox(height: 20,),
                    state is SignUpLoadingState?
                    CircularProgressIndicator(color: AppColors.kPrimaryColor,):
                    CustomBtn(
                      text: "Sign In",onPressed: (){
                        if(authCubit.signInFormKey.currentState!.validate()){
                         authCubit.signInEmailAndPassword();
                      }
                    },),
                  ],
                ),
              ));
        }
    );
  }
}
