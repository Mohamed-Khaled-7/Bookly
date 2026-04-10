part of 'search_cubit.dart';

sealed class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitial extends SearchCubitState {}

final class SearchCubitLoading extends SearchCubitState {}

final class SearchCubitError extends SearchCubitState {
  String errMessage;
   SearchCubitError({required this.errMessage});
}

final class SearchCubitSuccess extends SearchCubitState {
  List<BookModel> books;
  SearchCubitSuccess({required this.books});
}
