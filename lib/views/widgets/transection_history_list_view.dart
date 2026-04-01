import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/models/transection_model.dart';
import 'package:responsuve_dash_board/views/widgets/transection_item.dart';

class TransectionHistoryListView extends StatelessWidget {
   TransectionHistoryListView({super.key});
final items =[
TransectionModel(title: 'Cashe Withdrawal', date: '13 Apr , 2022', amount: r'$20,129', isWithdrawal: true),
TransectionModel(title: 'Landing Page project', date: '13 Apr , 2022 at 3.30 PM', amount: r'$20,000', isWithdrawal: false),
TransectionModel(title: 'Juni Mobile App project', date: '13 Apr , 2022 at 3.30 PM', amount: r'$20,129', isWithdrawal: false)

];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e)=>TransectionItem(transectionModel: e)).toList()
    );
    


  }
}