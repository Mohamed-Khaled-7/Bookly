import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  BookImage({super.key,required this.imageUrl});
  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(height: 243, width: 162, child: Image.network(imageUrl)),
    );
  }
}
