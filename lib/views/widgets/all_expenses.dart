import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsuve_dash_board/views/widgets/all_expensess_items_list_view.dart';
import 'package:responsuve_dash_board/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(child:  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensessItemsListView()
        ],
      ),);
  }
}

