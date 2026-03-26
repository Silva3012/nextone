import 'package:flutter/material.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';

class AuthErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onDismiss;
  final bool showDismissButton;

  const AuthErrorWidget({
    super.key,
    required this.message,
    this.onDismiss,
    this.showDismissButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: paddingAll16,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: NextOneColors.error.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: NextOneColors.error.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.error_outline,
            color: NextOneColors.error,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                color: NextOneColors.error,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (showDismissButton && onDismiss != null) ...[
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onDismiss,
              child: const Icon(
                Icons.close,
                color: NextOneColors.error,
                size: 18,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
