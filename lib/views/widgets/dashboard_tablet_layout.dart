import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsuve_dash_board/views/widgets/dashboard_mobile_layout.dart';


class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    Expanded(child: CustomDrawer()),
    SizedBox(height: 32,),
   Expanded(  flex: 3,  
   child:Padding(padding: EdgeInsets.only(top: 40),
  child: DashBoardMobileLayout()),),
       SizedBox(height: 32,),

      ],
    );
  }
}

