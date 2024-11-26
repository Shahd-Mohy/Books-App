import 'package:books_app/core/utils/styels.dart';
import 'package:books_app/features/home/presentation/view_models/views/widgets/book_action.dart';
import 'package:books_app/features/home/presentation/view_models/views/widgets/book_del_app_bar.dart';
import 'package:books_app/features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:books_app/features/home/presentation/view_models/views/widgets/custom_book_image.dart';
import 'package:books_app/features/home/presentation/view_models/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                    child: CustomBookImage(),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'The Jungle Book',
                    style: Styels.textStyle30,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard Kipling',
                      style: Styels.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BookAction(),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('You can also like',
                        style: Styels.textStyle16
                            .copyWith(fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SimilarBooksListView(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
