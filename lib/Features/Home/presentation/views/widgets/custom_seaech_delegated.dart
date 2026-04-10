import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/presentation/views%20model/best_seller_cubit/best_seller/best_seller_cubit.dart';
import 'package:project/Features/Home/presentation/views%20model/searched_cubit/search_cubit.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_best_seller_card.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_widget_error.dart';

class OnSearchDelegated extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(LucideIcons.x),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      icon: Icon(LucideIcons.moveLeft),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildResult(context);
  }

  Widget _buildResult(BuildContext context) {
    List<BookModel> allBooks = context.read<BestSellerCubit>().allBooks;
    return BlocProvider(
      create: (context) => SearchCubit()..searcheBooks(query, allBooks),
      child: BlocBuilder<SearchCubit, SearchCubitState>(
        builder: (context, state) {
          if (state is SearchCubitSuccess && state.books.isEmpty) {
            return Center(
              child: Text(
                'No results found',
                style: GoogleFonts.poppins(fontSize: 23, color: Colors.white),
              ),
            );
          } else {
            if (state is SearchCubitSuccess) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return CustomBestSellerCard(bookModel: state.books[index]);
                },
                itemCount: state.books.length,
              );
            } else if (state is SearchCubitError) {
              return CustomError(errMessage: state.errMessage);
            } else {
              return Center(
                child: CircularProgressIndicator(color: Colors.blueAccent),
              );
            }
          }
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}
