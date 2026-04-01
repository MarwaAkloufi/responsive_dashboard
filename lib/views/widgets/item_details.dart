import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/models/item_details_model.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: OvalBorder(),
          
          ),
      ),
      title:Text(itemDetailsModel.title,style: AppStyles.TextStyleRegular16(context),) ,
      trailing: Text(itemDetailsModel.value,style: AppStyles.TextStyleMedium16(context),),
    );
  }
}