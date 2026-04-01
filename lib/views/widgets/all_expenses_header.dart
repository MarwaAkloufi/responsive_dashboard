import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';
import 'package:responsuve_dash_board/views/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses',
        style: AppStyles.TextStyleSemiBold20(context),
        ),
   Expanded(child: SizedBox()),
        RangeOptions()
      ],
    );
  }
}

