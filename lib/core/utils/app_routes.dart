import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/Data/repo/home_repo_imp.dart';
import 'package:project/Features/Home/presentation/views%20model/also_like/also_like_cubit.dart';
import 'package:project/Features/Home/presentation/views/book_details_view.dart';
import 'package:project/Features/Home/presentation/views/home_view.dart';
import 'package:project/Features/Splash/Presentation/views/splash_view.dart';
import 'package:project/core/utils/git_it.dart';
abstract class AppRoutes {
  static final kHomeView = '/homeView';
  static final kBookDetailsView = '/bookDetailsView';
  static final routes = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          final bookModel = state.extra as BookModel;
          return BlocProvider(
            create: (context) =>
                AlsoLikeCubit(homeRepo: getIt.get<HomeRepoImplement>())
                  ..fetchAlsoLike(
                    category: bookModel.volumeInfo.categories?.first ?? '',
                  ),
            child: BookDetailsView(bookModel: bookModel),
          );
        },
      ),
    ],
  );
}