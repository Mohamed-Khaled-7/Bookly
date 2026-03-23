import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/Data/repo/home_repo.dart';
import 'package:project/Features/Home/Data/repo/home_repo_imp.dart';
import 'package:project/core/utils/api_service.dart';

part 'featured_cubit_state.dart';

class FeaturedCubitCubit extends Cubit<FeatuerdCubitState> {
  HomeRepo homeRepo;
  FeaturedCubitCubit({required this.homeRepo}) : super(FeaturedCubitInitial());
  Future<void> getFeaturedBooks() async {
    emit(FeaturedCubitLoading());
    var data = await homeRepo.fetchFeatuerdBooks();
    data.fold((failure) {
      emit(FeaturedCubitError(errMessage: failure.errMessage));
    },
     (books) {
       emit(FeaturedCubitSuccess(books: books));
     });
  }
}
