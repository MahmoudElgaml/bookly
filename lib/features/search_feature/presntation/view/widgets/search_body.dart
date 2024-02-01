import 'package:bookly_app_mvvm/core/api/api_manager.dart';
import 'package:bookly_app_mvvm/core/utils/service_locator.dart';
import 'package:bookly_app_mvvm/features/search_feature/data/repo/search_epo_impl.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view/widgets/search_list_view.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view/widgets/search_textfield.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view_model/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(SearchRepoImpl(getIt.get<ApiManger>())),
      child: const SafeArea(
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
      ),
    );
  }
}
