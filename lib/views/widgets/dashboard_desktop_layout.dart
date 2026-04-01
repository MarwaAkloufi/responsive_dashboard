import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsuve_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsuve_dash_board/views/widgets/income_section.dart';
import 'package:responsuve_dash_board/views/widgets/my_cards_and_transection_history_section.dart';
class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       Expanded(child:CustomDrawer()),
       SizedBox(width: 32,),

      Expanded(
        flex: 3,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
           Expanded(flex: 2,
         child:Padding(padding: EdgeInsetsGeometry.only(top: 40),
        child: AllExpensessAndQuickInvoiceSection())),
        SizedBox(width: 24,),
        Expanded(
         child:Column(
          children: [
            SizedBox(height: 40,),
        Expanded(
        child: MyCardsAndTransectionHistorySection()),
        SizedBox(height: 24,),
        Expanded(child:IncomeSection())

          ],
        )
       
       ),


                ],
              ),
            )
          ],
        )
        
        )
      
      ],
    );
  }
}

