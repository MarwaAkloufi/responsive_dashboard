import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hint});
final  String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
       hintStyle: AppStyles.TextStyleRegular16(context).copyWith(
        color: Color(0xFFAAAAAA)
       ),
        fillColor: Color(0xFFFAFAFA),
        filled: true,
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
     borderSide: BorderSide(
     color: Color(0xFFFAFAFA),)
     ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
   color: Color(0xFFFAFAFA),
)
        ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
   color: Color(0xFFFAFAFA),
)
      )
      ),
    );
  }
}