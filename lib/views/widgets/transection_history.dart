import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';
import 'package:responsuve_dash_board/views/widgets/transection_history_header.dart';
import 'package:responsuve_dash_board/views/widgets/transection_history_list_view.dart';

class TransectionHistory extends StatelessWidget {
  const TransectionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransectionHistoryHeader(),
        SizedBox(height: 20,),
     Text('13 April 2022',style: AppStyles.TextStyleMedium16(context),),
     SizedBox(height: 16,),
     TransectionHistoryListView()
      ],
    );
  }
}

