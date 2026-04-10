import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/Data/repo/home_repo.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  HomeRepo homeRepo;
  late List<BookModel> allBooks;
  BestSellerCubit({required this.homeRepo}) : super(BestSellerInitial());
  Future<void> getBestSellerBooks() async {
    emit(BestSellerLoading());
    var data = await homeRepo.fetchBestSellerBooks();
    data.fold(
      (failure) {
        emit(BestSellerFailure(errMessage: failure.errMessage));
      },
      (books) {
        allBooks = books;
        emit(BestSellerSuccess(books: books));
      },
    );
  }

  List<BookModel> getAllBooks(){
     return allBooks;
  }
}
