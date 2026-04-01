import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.backgroundColor,this.textColor});
final Color? backgroundColor ,textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
   child:  ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        elevation: 0,
        backgroundColor:backgroundColor ??   Color(0xFF4DB7F2)
      ),
      onPressed: (){

      },
       child: Text('Send Money',
       style: AppStyles.TextStyleSemiBold18(context).copyWith(
        color: textColor
       ),
       )
       ));
  }
}