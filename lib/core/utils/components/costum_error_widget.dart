import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CostumeErrorWidget extends StatelessWidget {

  String errorMessage;


  CostumeErrorWidget(this.errorMessage, {super.key});


  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage,style: AppStyle.textStyle18,));
  }
}
