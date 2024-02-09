import 'package:bookly_app_mvvm/core/api/api_manager.dart';
import 'package:bookly_app_mvvm/core/utils/service_locator.dart';
import 'package:bookly_app_mvvm/features/search_feature/data/repo/search_epo_impl.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view/widgets/search_list_view.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view/widgets/search_textfield.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view_model/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(SearchRepoImpl(getIt.get<ApiManger>())),
      child:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              Row(
                children: [
                  IconButton(onPressed: () {
                     context.pop();}, icon: const Icon(Icons.arrow_back_outlined)),
                  const SearchTextField(),
                ],
              ),
              const Gap(20),
              const Expanded(child: SearchListView()),

            ],
          ),
        ),
      ),
    );
  }
}
