import 'package:books_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage(AssetsData.testImage),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
