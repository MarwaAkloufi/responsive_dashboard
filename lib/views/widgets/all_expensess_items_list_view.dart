import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/models/all_expensess_item_model.dart';
import 'package:responsuve_dash_board/utils/app_images.dart';
import 'package:responsuve_dash_board/views/widgets/all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
   AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() => _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
final  items =[

  AllExpensessItemModel(
    image:Assets.imagesBalance,
    title: 'Balance',
    date: 'April 2022',
    price: r'$20,129'
     ),
AllExpensessItemModel(
        image: Assets.imagesIncome,
               title: 'Income',
                date: 'April 2022',
                 price: r'$20,129',),
      AllExpensessItemModel(
        image: Assets.imagesExpenses,
               title: 'Expensess',
                date: 'April 2022',
                 price: r'$20,129',),           


];
int selectedIndex=0;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
      Expanded(
 child:GestureDetector(
  onTap: () {
      updateIndex(0);
    },
      child: AllExpensessItem(itemModel: items[0],
  isSelected: selectedIndex==0,
  
  
  ),
  )),
    SizedBox(width: 8,),

      Expanded(
 child:GestureDetector(
  onTap: () {
      updateIndex(1);
    },
      child: AllExpensessItem(itemModel: items[1],
  isSelected: selectedIndex==1,
  
  
  ),
  )),
  SizedBox(width: 8,),
      Expanded(
 child:GestureDetector(
  onTap: () {
      updateIndex(2);
    },
      child: AllExpensessItem(itemModel: items[2],
  isSelected: selectedIndex==2,
  
  
  ),
  )),




      ],
    );
    /*
    //*********************** */
   return Row(
  //  children: items.map((e)=> Expanded(child:AllExpensessItem(itemModel: e))).toList(),
  children: items.asMap().entries.map((e){

int index=e.key;
var item=e.value;

  return Expanded(
 child:GestureDetector(
  onTap: () {
      updateIndex(index);
    },
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: index == 1 ?  12 : 0),
  child: AllExpensessItem(itemModel: item,
  isSelected: selectedIndex==index,
  
  
  ),
  )));

  }).toList(),
     );
     */
  }

void updateIndex(int index){

  setState(() {
    selectedIndex=index;
  });
}



}