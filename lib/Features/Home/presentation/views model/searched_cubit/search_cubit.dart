import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit() : super(SearchCubitInitial());
  List<BookModel> booksSearched = [];
  void searcheBooks(String query, List<BookModel> allBooks) {
    if (query.isEmpty) {
      booksSearched = allBooks;
      emit(SearchCubitSuccess(books: booksSearched));
    } else {
      booksSearched = allBooks
          .where(
            (book) =>
                book.volumeInfo.title!.toLowerCase().contains(
                  query.toLowerCase(),
                ) ||
                book.volumeInfo.authors![0].toLowerCase().contains(
                  query.toLowerCase(),
                ),
          )
          .toList();
      emit(SearchCubitSuccess(books: booksSearched));
    }
  }
}
