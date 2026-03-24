import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Home/presentation/views%20model/best_seller_cubit/best_seller/best_seller_cubit.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_also_like_card.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_featuers_card.dart';
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
        SizedBox(
          width: double.infinity,
          height: 117,
          child: Padding(
            padding: const EdgeInsets.only(left: 17),
            child: AlsoLikeList(),
          ),
        ),
      ],
    );
  }
}

class AlsoLikeList extends StatelessWidget {
  const AlsoLikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellerSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomAlsoLikeCard(bookModel: state.books[index]),
              );
            },
            itemCount: 10,
          );
        } else if (state is BestSellerFailure) {
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
