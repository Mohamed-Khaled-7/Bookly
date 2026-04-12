import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/Data/repo/home_repo.dart';
part 'also_like_state.dart';

class AlsoLikeCubit extends Cubit<AlsoLikeState> {
  AlsoLikeCubit({required this.homeRepo}) : super(AlsoLikeInitial());
  HomeRepo homeRepo;
  Future<void> fetchAlsoLike({required String category}) async {
    emit(AlsoLikeLoading());
    var data =await homeRepo.fetchAlsoLikeBooks(category: category);
    data.fold(
      (failure) {
        emit(AlsoLikeError(errMessage: failure.errMessage));
      },
      (books) {
        emit(AlsoLikeSuccess(books: books));
      }
    );
  }
}
