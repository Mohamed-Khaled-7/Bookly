import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/Data/repo/home_repo.dart';
import 'package:project/core/errors/faliers.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  HomeRepo homeRepo;
  BestSellerCubit({required this.homeRepo}) : super(BestSellerInitial());
  Future<void> getBestSellerBooks() async {
    emit(BestSellerLoading());
    var data = await homeRepo.fetchBestSellerBooks();
    data.fold(
      (failure) {
        emit(BestSellerFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(BestSellerSuccess(books: books));
      },
    );
  }
}
