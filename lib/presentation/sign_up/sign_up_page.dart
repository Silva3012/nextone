import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/sign_up/widgets/sign_up_footer.dart';
import 'package:nextone/shared/widgets/background_image.dart';
import 'package:nextone/shared/widgets/nextone_button.dart';
import 'package:nextone/shared/widgets/nextone_logo.dart';
import 'package:nextone/shared/widgets/nextone_text_field.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          SafeArea(
            child: Center(
              child: Padding(
                padding: paddingAll24,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const NextoneLogo(),
                    height200,
                    const NextoneTextField(
                      hintText: 'Username',
                      controller: null,
                      keyboardType: TextInputType.text,
                      prefixIcon: Icon(Icons.person),
                    ),
                    height16,
                    const NextoneTextField(
                      hintText: 'Password',
                      controller: null,
                      keyboardType: TextInputType.text,
                      prefixIcon: Icon(Icons.lock),
                      obscureText: true,
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                    height80,
                    NextoneButton(
                      text: 'Sign Up',
                      onPressed: () {},
                      type: NextoneButtonType.primary,
                    ),
                    height16,
                    NextoneButton(
                      text: 'Facebook',
                      onPressed: () {},
                      type: NextoneButtonType.secondary,
                    ),
                    height16,
                    NextoneButton(
                      text: 'Google',
                      onPressed: () {},
                      type: NextoneButtonType.secondary,
                    ),
                    const Spacer(),
                    const SignUpFooter(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
