import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/utils/size_config.dart';

abstract class AppStyles {

static TextStyle TextStyleRegular16(context){
return TextStyle(
color: Color(0xFF064061),
fontSize:getResponsiveFontSize(context,fontSize: 16) ,
fontFamily: 'Montserrat',
fontWeight: FontWeight.w400,
);
}
static TextStyle TextStyleBold16(context){
return TextStyle(
color: Color(0xFF4EB7F2),
fontSize:getResponsiveFontSize(context,fontSize: 16) ,
fontFamily: 'Montserrat',
fontWeight: FontWeight.w700,
);

}
static TextStyle TextStyleMedium16(context){
return TextStyle(
color: Color(0xFF064061),
fontSize: getResponsiveFontSize(context, fontSize: 16),
fontFamily: 'Montserrat',
fontWeight: FontWeight.w500,
);
}

static TextStyle TextStyleMedium20(context){
 return TextStyle(
color: Color(0xFFFFFFFF),
fontSize: getResponsiveFontSize(context,fontSize:20),
fontFamily: 'Montserrat',
fontWeight: FontWeight.w500,
);
}
static TextStyle TextStyleSemiBold16(context){
return TextStyle(
color: Color(0xFF064061),
fontSize: getResponsiveFontSize(context,fontSize:16),
fontFamily: 'Montserrat',
fontWeight: FontWeight.w600,
);
}
static TextStyle TextStyleSemiBold20(context){
return TextStyle(
color: Color(0xFF064061),
fontSize: getResponsiveFontSize(context,fontSize:20),
fontFamily: 'Montserrat',
fontWeight: FontWeight.w600,
);
}
static TextStyle TextStyleRegular12(context){
return TextStyle(
color: Color(0xFFAAAAAA),
fontSize: getResponsiveFontSize(context,fontSize:12),
fontFamily: 'Montserrat',
fontWeight: FontWeight.w400,
);
}
static TextStyle TextStyleSemiBold24(context){
return TextStyle(
color: Color(0xFF4EB7F2),
fontSize: getResponsiveFontSize(context,fontSize:24),
fontFamily: 'Montserrat',
fontWeight: FontWeight.w600,
);
}
static TextStyle TextStyleRegular14(context){
return TextStyle(
color: Color(0xFFAAAAAA),
fontSize: getResponsiveFontSize(context,fontSize:14),
fontFamily: 'Montserrat',
fontWeight: FontWeight.w400,
);
}
static TextStyle TextStyleSemiBold18(context){
return TextStyle(
color: Color(0xFFFFFFFF),
fontSize: getResponsiveFontSize(context,fontSize:18),
fontFamily: 'Montserrat',
fontWeight: FontWeight.w600,
);

}


}


double getResponsiveFontSize(context, {required double fontSize}){

double scaleFactor=getScaleFactor(context);
double  responsiveFontSize=fontSize * scaleFactor;

double lowerLimit=fontSize * .8;
double upperLimit=fontSize * 1.2;


return responsiveFontSize.clamp(lowerLimit, upperLimit);

}
double getScaleFactor(context){

 // var dispatcher= PlatformDispatcher.instance;
 // var physicalWidth=dispatcher.views.first.physicalSize.width;
 // var devicePixelRatio=dispatcher.views.first.devicePixelRatio;
 // double width= physicalWidth/ devicePixelRatio;
 double width=MediaQuery.sizeOf(context).width;
if(width < SizeConfig.tablet){
  return width/550;
}
else if(width< SizeConfig.desktop){
  return width/1000;
}
else{
  return width /1920;
}
}