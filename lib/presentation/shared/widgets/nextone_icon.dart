import 'package:flutter/material.dart';
import 'package:nextone/core/constants/semantics_label_constants.dart';

class NextoneIcon extends StatelessWidget {
  const NextoneIcon({super.key});

  @override
  Widget build(BuildContext context) {
    const assetPath = 'assets/images/nextone_icon_updated.png';
    return Image.asset(
      assetPath,
      width: 200,
      height: 200,
      semanticLabel: nextoneLogo,
    );
  }
}
