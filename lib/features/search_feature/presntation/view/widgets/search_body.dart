import 'package:bookly_app_mvvm/features/search_feature/presntation/view/widgets/search_list_view.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view/widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            SearchTextField(),
            Gap(20),
            Expanded(child: SearchListView()),

          ],
        ),
      ),
    );
  }
}
