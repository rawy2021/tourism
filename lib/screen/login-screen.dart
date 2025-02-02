// import 'package:flutter/material.dart';
// import 'package:projecttest/screen/sign-up.dart';
// import 'package:projecttest/widget/custom-buttom.dart';
// import 'package:projecttest/widget/custom-text-filed.dart';
//
// import '../core/utils/app_color.dart';
// import '../widget/custom-text-form-field.dart';
//
// class LoginScreen extends StatelessWidget {
//   static String id ="LoginScreen";
//   const LoginScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kMainColor,
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 40),
//             child: Container(
//               height: MediaQuery.of(context).size.height*0.2,
//               child: const Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Image(image: AssetImage("assets/images/main.png")),
//                   Positioned(
//                     bottom: 2,
//                     child: Text("Shopping",style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w600,
//                     ),),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           const CustomTextFormField(
//             hintText: 'Enter Your Email',
//             label: 'Email',
//             icon: Icons.email,
//           ),
//           const CustomTextFormField(
//             hintText: 'Enter Your Password',
//             label: 'Password',
//             icon: Icons.lock,
//           ),
//           CustomButton(text: "Enter",
//               onPressed: (){}),
//            Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomTextFiled(text: 'Dont Have a Account? ', fontSize: 16, color: kTextColor,),
//               GestureDetector(
//                   onTap:(){
//     Navigator.pushNamed(context,SignUpScreen.id);
//     } ,
//                   child: CustomTextFiled(text: 'Sign in', fontSize: 18, color: kPrimaryColor,)),
//
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
