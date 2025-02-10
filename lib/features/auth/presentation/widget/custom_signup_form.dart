import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        return Form(child: Column(
          children: [
            CustomTextFormField(labelText: 'First Name',
            onChanged: (firsName){
              BlocProvider.of<AuthCubit>(context).firstName = firsName;
            },
            ),
            CustomTextFormField(labelText: 'Last Name',
            onChanged: (lastName){
              BlocProvider.of<AuthCubit>(context).lastName = lastName;
            },
            ),
            CustomTextFormField(labelText: 'email',
            onChanged: (emailAddress){
              BlocProvider.of<AuthCubit>(context).emailAddress = emailAddress;
            },
            ),
            CustomTextFormField(labelText: 'password',
            onChanged: (password){
              BlocProvider.of<AuthCubit>(context).password = password;
            },
            ),
            const SizedBox(height: 10,),
            const TermsAndCondition(),
            const SizedBox(height: 88,),
            CustomBtn(text: "Sign Up",onPressed: (){
              BlocProvider.of<AuthCubit>(context)
                  .signUpEmailAndPassword();
            },),
          ],
        ));

      }
    );
  }
}
