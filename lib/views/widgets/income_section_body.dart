
import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/size_config.dart';
import 'package:responsuve_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:responsuve_dash_board/views/widgets/income_chart.dart';
import 'package:responsuve_dash_board/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.sizeOf(context).width;
    return  width >= SizeConfig.desktop && width< 1750 
    ?  Padding(padding: EdgeInsets.all(16),
   child:   DetailedIncomeChart())
    :Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
    Expanded(child: IncomeChart(),),
    Expanded(child: IncomeDetails(),)
    
    ],);
  }
}