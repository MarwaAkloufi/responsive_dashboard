import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/size_config.dart';
import 'package:responsuve_dash_board/views/widgets/adaptive_layout_widget.dart';
import 'package:responsuve_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsuve_dash_board/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsuve_dash_board/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsuve_dash_board/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldkey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? AppBar(
   leading: IconButton(
    onPressed: (){
      scaffoldkey.currentState!.openDrawer();
    },
     icon:Icon(Icons.menu)),
   elevation: 0,
   backgroundColor: Color(0xFFFAFAFA),
      ) : null,
      drawer:MediaQuery.sizeOf(context).width < SizeConfig.tablet ? CustomDrawer() : null ,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(mobileLayout: (context) =>DashBoardMobileLayout()
      , tabletLayout: (context)=>DashboardTabletLayout()
      , desktopLayout: (context)=>DashboardDesktopLayout()
      ),
    );
  }
}