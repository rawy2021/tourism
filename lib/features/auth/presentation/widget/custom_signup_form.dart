import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      listener: (context,state){},
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
            CustomTextFormField(labelText: 'password',
            onChanged: (password){
              authCubit.password = password;
            },
            ),
            const SizedBox(height: 10,),
            const TermsAndCondition(),
            const SizedBox(height: 88,),
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
