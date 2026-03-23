import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:project/Features/Home/presentation/views/widgets/list_cards_features.dart';
import 'package:project/Features/Home/presentation/views/widgets/list_cards_best_seller.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomAppBar(),
                Padding(
                  padding: const EdgeInsetsGeometry.only(left: 17),
                  child: ListFeatuersCards(),
                ),
                SizedBox(height: 20),
                Header(),
                BestSellerCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 233),
      child: Text('Best Sellers', style: GoogleFonts.inter(fontSize: 20)),
    );
  }
}
