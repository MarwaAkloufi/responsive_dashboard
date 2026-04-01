import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';
import 'package:responsuve_dash_board/views/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
   TitleTextField({super.key,required this.hint,required this.title});
  String title,hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Customer name',
        style: AppStyles.TextStyleMedium16(context)
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint,)
      ],
    );
  }
}