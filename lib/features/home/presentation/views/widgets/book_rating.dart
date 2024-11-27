import 'package:books_app/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});

 final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 18,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text('4.5',
            style: Styels.textStyle16
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
        const SizedBox(
          width: 5,
        ),
        Text('(245)',
            style: Styels.textStyle14.copyWith(
                color: Color(0xff707070), fontWeight: FontWeight.w600))
      ],
    );
  }
}
