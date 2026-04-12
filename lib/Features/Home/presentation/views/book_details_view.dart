import 'package:flutter/material.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  BookModel bookModel;
  BookDetailsView({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BookDetailsViewBody(bookModel: bookModel));
  }
}
