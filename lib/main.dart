import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Features/Home/presentation/views%20model/best_seller_cubit/best_seller/best_seller_cubit.dart';
import 'package:project/Features/Home/presentation/views%20model/featured_cubit/featred_cubit_cubit.dart';
import 'package:project/Features/Home/presentation/views%20model/searched_cubit/search_cubit.dart';
import 'package:project/constant.dart';
import 'package:project/core/utils/app_routes.dart';
import 'package:project/core/utils/git_it.dart';

void main() {
  setup(); //for gitIt
  runApp(Bookly());
}
class Bookly extends StatelessWidget {
  const Bookly({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SearchCubit()),
        BlocProvider(
          create: (context) => getIt.get<FeaturedCubit>()..getFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              getIt.get<BestSellerCubit>()..getBestSellerBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.routes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kColor),
      ),
    );
  }
}
