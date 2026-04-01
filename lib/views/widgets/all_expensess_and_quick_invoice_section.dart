import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/views/widgets/all_expenses.dart';
import 'package:responsuve_dash_board/views/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
           AllExpenses(),
           SizedBox(height: 24,),
           QuickInvoice()
         ],
       );
  }
}