import 'package:flutter/material.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: NextOneTextStyles.bodyText1.copyWith(
            color: NextOneColors.textPrimary,
          ),
        ),
        TextButton(
          onPressed: () {
            // TODO: implement navigation to sign up
          },
          child: Text(
            'Sign Up',
            style: NextOneTextStyles.bodyText1.copyWith(
              color: NextOneColors.primaryButton,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
