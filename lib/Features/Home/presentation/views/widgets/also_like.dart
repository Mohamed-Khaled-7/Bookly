import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Home/presentation/views%20model/also_like/also_like_cubit.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_also_like_card.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_widget_error.dart';

class AlsoLike extends StatelessWidget {
  const AlsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(right: 255),
          child: Text(
            'You can also like',
            style: GoogleFonts.inter(fontSize: 14),
          ),
        ),
        SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(23)),
          width: double.infinity,
          height: 117,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: AlsoLikeList(),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class AlsoLikeList extends StatelessWidget {
  const AlsoLikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlsoLikeCubit, AlsoLikeState>(
      builder: (context, state) {
        if (state is AlsoLikeSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomAlsoLikeCard(bookModel: state.books[index]),
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is AlsoLikeError) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(color: Colors.blueAccent),
          );
        }
      },
    );
  }
}
