import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xffFFF5F2),
      //todo
      child: SvgPicture.asset('assets/icons/placeholder.svg'),
    );
  }
}
