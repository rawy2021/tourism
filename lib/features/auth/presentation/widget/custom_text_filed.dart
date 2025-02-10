import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
  });
  final String labelText;
  void Function(String)? onChanged;
  void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,left: 8,top: 28),
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return "This Field is Required";
          }else{
            return null;
          }
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: CustomTextStyles.cairo300style16,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),

        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: AppColors.kPrimaryColor)

  );
}