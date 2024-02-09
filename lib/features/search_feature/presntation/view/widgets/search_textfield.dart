import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_cubit.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view_model/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController txt = TextEditingController();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          onTap: () {},
          onChanged: (value) {
            if(value ==""){
            }
            else {
              BlocProvider.of<SearchCubit>(context).getBySearch(search: value);
            }
          },
          controller: txt,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25),
            ),
            hintText: "what book you Search?",
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            filled: true,
          ),
        ),
      ),
    );
  }
}
