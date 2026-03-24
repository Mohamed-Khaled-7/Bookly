import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Features/Home/presentation/views%20model/best_seller_cubit/best_seller/best_seller_cubit.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_best_seller_card.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_widget_error.dart';

class BestSellerCards extends StatelessWidget {
  const BestSellerCards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellerSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder:(context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child:  CustomBestSellerCard(i:index,bookModel: state.books[index],),
              );
            },
            itemCount: 10,
          );
        }else if(state is BestSellerFailure)
        {
          return CustomError(errMessage: state.errMessage,);
        }else{
          return const Center(
            child: CircularProgressIndicator(color: Colors.blueAccent),
          );
        }
      },
    );
  }
}
