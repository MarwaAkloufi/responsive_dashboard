import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';
import 'package:responsuve_dash_board/views/widgets/latest_transction_list_view.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction',
        style: AppStyles.TextStyleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
LatestTransctionListView()


      ],
    );
  }
}
