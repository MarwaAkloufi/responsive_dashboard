import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsuve_dash_board/views/widgets/my_card_section.dart';
import 'package:responsuve_dash_board/views/widgets/transection_history.dart';

class MyCardsAndTransectionHistorySection extends StatelessWidget {
  const MyCardsAndTransectionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: SingleChildScrollView(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
            ),
          TransectionHistory()
        ],
      )),
    );
  }
}