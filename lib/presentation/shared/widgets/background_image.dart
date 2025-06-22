import 'dart:ui';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    this.blur = false,
    this.overlayColor,
  });

  /// Enables Gaussian blur when true
  final bool blur;

  /// Adds a semi-transparent overlay if provided
  final Color? overlayColor;

  @override
  Widget build(BuildContext context) {
    const assetPath = 'assets/images/stage_background.png';

    return Stack(
      fit: StackFit.expand,
      children: [
        const Image(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
        if (blur)
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
        if (overlayColor != null)
          Container(
            color: overlayColor,
          ),
      ],
    );
  }
}
