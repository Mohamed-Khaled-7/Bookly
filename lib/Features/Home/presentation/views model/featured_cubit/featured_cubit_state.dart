part of 'featred_cubit_cubit.dart';

sealed class FeatuerdCubitState extends Equatable {
  const FeatuerdCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedCubitInitial extends FeatuerdCubitState {}

final class FeaturedCubitLoading extends FeatuerdCubitState {}

final class FeaturedCubitSuccess extends FeatuerdCubitState {
  List<BookModel> books;
  FeaturedCubitSuccess({required this.books});
}

final class FeaturedCubitError extends FeatuerdCubitState {
  final String errMessage;
  const FeaturedCubitError({required this.errMessage});
}
