import 'package:flutter/material.dart';
import 'package:project/Features/Home/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const BookDetailsViewBody());
  }
}
