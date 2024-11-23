import 'package:books_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: const Row(
        children: [
          Expanded(
              child: CustomButton(
            text: '19.9 \$',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRaduis: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButton(
            fontSize: 16,
            text: 'Free Preview',
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRaduis: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          )),
        ],
      ),
    );
  }
}
