import 'package:books_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (contex, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(imageUrl: 'https://techalmirah.com/wp-content/uploads/2019/10/SiteIcon.jpg',),
            );
          }),
    );
  }
}