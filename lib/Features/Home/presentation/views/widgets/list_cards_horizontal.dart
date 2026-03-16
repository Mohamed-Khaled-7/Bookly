import 'package:flutter/material.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_horizontal_card.dart';

class ListHorizontalCards extends StatelessWidget {
  const ListHorizontalCards({super.key});
  @override
  Widget build(BuildContext context) {
    return ListCards();
  }
}

class ListCards extends StatelessWidget {
  const ListCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomHorizontalCard(hight: 224,width: 150,),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
