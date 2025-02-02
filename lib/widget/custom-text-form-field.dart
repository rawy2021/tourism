import 'package:flutter/material.dart';

import '../const/color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
    required this.hintText,
    required this.label,
    required this.icon});
 final String hintText;
 final String label;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        validator: (value)
        {
          if(value!.isEmpty){
            return "Value is empty";
          }
          return "";
        },
        decoration:  InputDecoration(
          hintText: hintText,
          labelText: label,
          border: const OutlineInputBorder(
            borderSide:BorderSide(color: kPrimaryColor),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          prefixIcon: Icon(icon,color: kPrimaryColor),
          filled: true,
          fillColor: kSecondaryColor,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey
              )
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey
              )
          ),
        ),

      ),
    );
  }
}
