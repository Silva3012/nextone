import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Have an account?',
          style: NextOneTextStyles.bodyText1.copyWith(
            color: NextOneColors.textPrimary,
          ),
        ),
        TextButton(
          onPressed: () {
            context.router.popAndPush(const LoginRoute());
          },
          child: Text(
            'Login',
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
