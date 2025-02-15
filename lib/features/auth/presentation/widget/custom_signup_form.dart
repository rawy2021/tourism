import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projecttest/core/function/custom_toast.dart';
import 'package:projecttest/core/function/navigation.dart';
import 'package:projecttest/core/utils/app_color.dart';
import 'package:projecttest/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:projecttest/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:projecttest/features/auth/presentation/widget/terms_and_condition.dart';
import '../../../../core/widgets/custom_btn.dart';
import 'custom_text_filed.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AuthCubit,AuthState>(
      listener: (context,state){
        if(state is SignUpSuccessState){
          showToastMessage("Create Account Successfully ");
          customNavigateReplacement(context, "/home");
        }else if(state is SignUpFailureState){
          showToastMessage(state.errorMessage);
        }
      },
      builder: (context,state){
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signUpFormKey,
            child: Column(
          children: [
            CustomTextFormField(labelText: 'First Name',
            onChanged: (firsName){
              authCubit.firstName = firsName;
            },
            ),
            CustomTextFormField(labelText: 'Last Name',
            onChanged: (lastName){
              authCubit.lastName = lastName;
            },
            ),
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
            const TermsAndCondition(),
            const SizedBox(height: 88,),
            state is SignUpLoadingState?
             CircularProgressIndicator(color: AppColors.kPrimaryColor,):
            CustomBtn(
              color: authCubit.termsAndConditionCheckBoxValue==false?
              AppColors.kTextColor:null,
              text: "Sign Up",onPressed: (){
             if(authCubit.termsAndConditionCheckBoxValue==true){
               if(authCubit.signUpFormKey.currentState!.validate()){
                 authCubit.signUpEmailAndPassword();
               }
             }
            },),
          ],
        ));
      }
    );
  }
}
