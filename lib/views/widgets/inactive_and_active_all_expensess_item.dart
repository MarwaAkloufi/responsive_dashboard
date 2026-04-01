import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/models/all_expensess_item_model.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';
import 'package:responsuve_dash_board/views/widgets/all_expensess_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: ShapeDecoration(
        shape:RoundedRectangleBorder(
          side: BorderSide(width: 1,color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadiusGeometry.circular(12)
        )
         ),
    
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         AllExpensessItemHeader(image: itemModel.image,),
    
        SizedBox(
          height: 34,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
       child:Text(
          itemModel.title,
        style: AppStyles.TextStyleMedium16(context),
        )),
        SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
       child: Text(
          itemModel.date,
        style: AppStyles.TextStyleRegular14(context),
        )),
         SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
       child: Text(
          itemModel.price,
        style: AppStyles.TextStyleSemiBold24(context),
        )
         )
          ],
         ),
    );
  }
}






class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape:RoundedRectangleBorder(
                 side: BorderSide(width: 1,color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadiusGeometry.circular(12)
        )
         ),
    
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         AllExpensessItemHeader(
         imageBackground: Colors.white.withOpacity(0.10000000149011612),
         imageColor: Colors.white,
         image: itemModel.image,),
    
        SizedBox(
          height: 34,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
      child: Text(
          itemModel.title,
        style: AppStyles.TextStyleMedium16(context).copyWith(
          color: Colors.white
        ))
        ),
        SizedBox(
          height: 8,
        ),
         FittedBox(
          fit: BoxFit.scaleDown,
       child: Text(
          itemModel.date,
        style: AppStyles.TextStyleRegular14(context).copyWith(
          color: Color(0xFFFAFAFA)
        ),
        ),
         ),
         SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
       child: Text(
          itemModel.price,
        style: AppStyles.TextStyleSemiBold24(context).copyWith(
          color: Colors.white
        )),
        )
          ],
         ),
    );
  }
}
