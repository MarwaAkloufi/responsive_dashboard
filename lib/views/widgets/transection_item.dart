import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/models/transection_model.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';

class TransectionItem extends StatelessWidget {
   TransectionItem({super.key,required this.transectionModel});
 final TransectionModel transectionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
    color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(
        title: Text(transectionModel.title,style: AppStyles.TextStyleSemiBold16(context),),
        subtitle: Text(transectionModel.date,style: AppStyles.TextStyleRegular16(context).copyWith(
          color: Color(0xFFAAAAAA)
        ),),
        trailing: Text(transectionModel.amount,style: AppStyles.TextStyleSemiBold20(context).copyWith(
          color: transectionModel.isWithdrawal ? Color(0xFFF3735E) : Color(0xFF7CD87A)
        )
        
        
        ,),
      ),
    );
  }
}