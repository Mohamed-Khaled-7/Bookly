part of 'also_like_cubit.dart';

sealed class AlsoLikeState extends Equatable {
  const AlsoLikeState();

  @override
  List<Object> get props => [];
}

final class AlsoLikeInitial extends AlsoLikeState {}
final class AlsoLikeLoading extends AlsoLikeState {}

final class AlsoLikeSuccess extends AlsoLikeState {
  List<BookModel> books;
  AlsoLikeSuccess({required this.books});
}

final class AlsoLikeError extends AlsoLikeState {
  final String errMessage;
  const AlsoLikeError({required this.errMessage});
}