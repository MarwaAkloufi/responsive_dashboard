import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/models/drawer_item_model.dart';
import 'package:responsuve_dash_board/models/user_info_model.dart';
import 'package:responsuve_dash_board/utils/app_images.dart';
import 'package:responsuve_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsuve_dash_board/views/widgets/in_active_drawer_item.dart';
import 'package:responsuve_dash_board/views/widgets/user_info_list_tile.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
    color: Colors.white,
    child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
   child: UserInfoListTile(
    userInfoModel: UserInfoModel(image: Assets.imagesAvatar3, title:'Lekan Okeowo' , subtitle: 'demo@gmail.com'),
         ),
    ),
    SliverToBoxAdapter(
     child:  SizedBox(
  height: 8,
     )),

     DrawerItemListView(),
   
   SliverFillRemaining(
    hasScrollBody: false,
    child: Column(
      children: [
        Expanded(child: SizedBox(height: 16,)),
InActiveDrawerItem(drawerItemModel: DrawerItemModel(
  title: 'Setting system', image: Assets.imagesSettings),
),

InActiveDrawerItem(drawerItemModel: DrawerItemModel(
  title: 'Logout account', image: Assets.imagesLogout),
),

SizedBox(height: 44,),
    ]))

      ],
    ),
    );
  }
}


 