import 'package:flutter/material.dart';
class AdaptiveLayout extends StatelessWidget {
   AdaptiveLayout({super.key,required this.mobileLayout,required this.desktopLayout,required this.tabletLayout});
WidgetBuilder mobileLayout,tabletLayout,desktopLayout;
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context,Constraints){
  if(Constraints.maxWidth < 800){
return mobileLayout(context);
  }
  else if(Constraints.maxWidth < 1200){
    return tabletLayout(context);
  }
  else{
  return desktopLayout(context);
  }

   });

  }
}