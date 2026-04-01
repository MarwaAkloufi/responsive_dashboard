import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/models/all_expensess_item_model.dart';
import 'package:responsuve_dash_board/views/widgets/inactive_and_active_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
   AllExpensessItem({super.key,required this.itemModel, required this.isSelected});
final AllExpensessItemModel itemModel;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return  isSelected ? ActiveAllExpensessItem(itemModel: itemModel) :
     InActiveAllExpensessItem(itemModel: itemModel);
  }
}

