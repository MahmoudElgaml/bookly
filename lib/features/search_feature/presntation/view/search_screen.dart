import 'package:bookly_app_mvvm/features/search_feature/presntation/view/widgets/search_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: SearchBody(),
    );
  }
}
