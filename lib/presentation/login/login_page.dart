import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/login/widgets/login_footer.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_logo.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';

@RoutePage()
class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isPasswordVisible = useState(true);

    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          SafeArea(
            child: Padding(
              padding: paddingAll24,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const NextoneLogo(),
                          SizedBox(height: screenHeight * 0.2),
                          const NextoneTextField(
                            hintText: 'Username',
                            controller: null,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(Icons.person),
                          ),
                          height16,
                          NextoneTextField(
                            hintText: 'Password',
                            controller: null,
                            keyboardType: TextInputType.text,
                            prefixIcon: const Icon(Icons.lock),
                            obscureText: isPasswordVisible.value,
                            suffixIcon: IconButton(
                              icon: isPasswordVisible.value
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () => isPasswordVisible.value =
                                  !isPasswordVisible.value,
                            ),
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
                          height16,
                          NextoneButton(
                            text: 'Login',
                            onPressed: () {},
                            type: NextoneButtonType.primary,
                          ),
                          height16,
                          NextoneButton(
                            text: 'Google',
                            onPressed: () {},
                            type: NextoneButtonType.secondary,
                          ),
                          height16,
                          NextoneButton(
                            text: 'Facebook',
                            onPressed: () {},
                            type: NextoneButtonType.secondary,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const LoginFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
