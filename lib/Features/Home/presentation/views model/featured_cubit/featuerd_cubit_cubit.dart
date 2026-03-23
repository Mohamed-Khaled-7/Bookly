import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/Data/repo/home_repo_imp.dart';
import 'package:project/core/utils/api_service.dart';

part 'featuerd_cubit_state.dart';

class FeatuerdCubitCubit extends Cubit<FeatuerdCubitState> {
  FeatuerdCubitCubit() : super(FeatuerdCubitInitial());

 
}
