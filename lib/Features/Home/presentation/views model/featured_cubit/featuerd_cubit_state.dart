part of 'featuerd_cubit_cubit.dart';

sealed class FeatuerdCubitState extends Equatable {
  const FeatuerdCubitState();

  @override
  List<Object> get props => [];
}

final class FeatuerdCubitInitial extends FeatuerdCubitState {}

final class FeatuerdCubitLoading extends FeatuerdCubitState {}

final class FeatuerdCubitSuccess extends FeatuerdCubitState {
  List<BookModel> books;
  FeatuerdCubitSuccess({required this.books});
}

final class FeatuerdCubitError extends FeatuerdCubitState {
  final String errMessage;
  const FeatuerdCubitError({required this.errMessage});
}
