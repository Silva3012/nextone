import 'package:flutter/material.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';

enum NextoneButtonType { primary, secondary }

class NextoneButton extends StatelessWidget {
  const NextoneButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = NextoneButtonType.primary,
  });

  final String text;
  final VoidCallback onPressed;
  final NextoneButtonType type;

  @override
  Widget build(BuildContext context) {
    final isPrimary = type == NextoneButtonType.primary;

    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: isPrimary
            ? NextOneColors.primaryButton
            : NextOneColors.secondaryButton,
        foregroundColor: NextOneColors.textPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: const Size(308, 54));

    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Text(
        text,
        style: NextOneTextStyles.bodyText1.copyWith(
          color: NextOneColors.textPrimary,
        ),
      ),
    );
  }
}
