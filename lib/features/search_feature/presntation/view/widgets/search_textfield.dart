import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController txt=TextEditingController();
    return TextField(
      onTap: () {},
      controller:txt ,
     style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          hintText: "what book you Search?",
          hintStyle: const TextStyle(
             fontWeight: FontWeight.w400,
            color: Colors.black
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          )),
    );
  }
}
