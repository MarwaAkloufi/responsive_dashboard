import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';
import 'package:responsuve_dash_board/views/widgets/dots_indicator.dart';
import 'package:responsuve_dash_board/views/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex=0;

  void initState(){

pageController=PageController();
pageController.addListener((){
currentPageIndex=pageController.page!.round();

});
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 420,
 child:  Text('My Card',style: AppStyles.TextStyleSemiBold20(context),)),
SizedBox(height: 20,),
MyCardsPageView(pageController: pageController,),
SizedBox(height: 20,),

DotsIndicator(currentPageIndex: currentPageIndex,)



      ],
    );





  }
}