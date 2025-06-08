import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nextone/core/constants/semantics_label_constants.dart';

class NextoneLogo extends StatelessWidget {
  const NextoneLogo({super.key});

  @override
  Widget build(BuildContext context) {
    const assetPath = 'assets/images/nextone_logo.svg';
    return SvgPicture.asset(
      assetPath,
      width: 50,
      height: 50,
      semanticsLabel: nextoneLogo,
    );
  }
}
