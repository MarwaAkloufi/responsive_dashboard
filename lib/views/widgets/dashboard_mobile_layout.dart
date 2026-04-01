import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsuve_dash_board/views/widgets/income_section.dart';
import 'package:responsuve_dash_board/views/widgets/my_cards_and_transection_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     child: Column(
      children: [
     AllExpensessAndQuickInvoiceSection(),
         SizedBox(height: 24,),
    
     MyCardsAndTransectionHistorySection(),
         SizedBox(height: 24,),
    
    IncomeSection()
    
    
        ]));
  }
}