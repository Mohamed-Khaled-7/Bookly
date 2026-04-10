import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Features/Home/presentation/views%20model/featured_cubit/featred_cubit_cubit.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_featuers_card.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_widget_error.dart';

class FeatuersCards extends StatefulWidget {
  const FeatuersCards({super.key});

  @override
  State<FeatuersCards> createState() => _FeatuersCardsState();
}

class _FeatuersCardsState extends State<FeatuersCards> {
  @override
  void initState() {
    context.read<FeaturedCubit>().getFeaturedBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListCards();
  }
}

class ListCards extends StatelessWidget {
  const ListCards({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubit, FeatuerdCubitState>(
      builder: (context, state) {
        if (state is FeaturedCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CustomFeatuersCard(bookModel: state.books[index]),
                );
              },
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeaturedCubitError) {
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
