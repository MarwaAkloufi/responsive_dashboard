import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsuve_dash_board/models/user_info_model.dart';
import 'package:responsuve_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
  child:Center(
  child: ListTile(
      leading:SvgPicture.asset(userInfoModel.image) ,
      title:FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
       child:Text(
        userInfoModel.title,
        style: AppStyles.TextStyleSemiBold16(context),
        ),),
              subtitle:FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
      child:  Text(
        userInfoModel.subtitle,
        style: AppStyles.TextStyleRegular12(context),
        ),
    ))));
  }
}