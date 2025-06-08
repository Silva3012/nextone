import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/features/auth/presentation/widgets/background_image.dart';
import 'package:nextone/shared/widgets/nextone_logo.dart';
import 'package:nextone/shared/widgets/nextone_text_field.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    height16,
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // TODO: Implement forgot password functionality
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Forgot Password functionality not implemented yet.',
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: NextOneColors.textPrimary,
                          ),
                        ),
                      ),
                    ),
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
