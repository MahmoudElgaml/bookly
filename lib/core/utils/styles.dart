import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyle {
  static TextStyle titleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bookNameStyle=TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,


  );
  static TextStyle authorStyle=TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,

  );
  static TextStyle boldStyle=TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,

  );
}
