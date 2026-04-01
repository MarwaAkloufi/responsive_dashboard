import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';

class TransectionHistoryHeader extends StatelessWidget {
  const TransectionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transection History',style: AppStyles.TextStyleSemiBold20(context),),
    
           Text('See all',style: AppStyles.TextStyleMedium16(context).copyWith(
            color: Color(0xFF4EB7F2)
           ),),
    
    
      ],
    );
  }
}