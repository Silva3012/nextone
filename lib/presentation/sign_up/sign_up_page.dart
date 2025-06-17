import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/sign_up/widgets/sign_up_footer.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_logo.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';
import 'package:nextone_core/nextone_core_export.dart';

@RoutePage()
class SignUpPage extends HookWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isPasswordVisible = useState(true);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      body: BlocListener<ArtistAuthBloc, ArtistAuthState>(
        listener: (context, state) {
          state.mapOrNull(loading: (_) {
            const CircularProgressIndicator();
          }, authenticated: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Sign up successful'),
              ),
            );
          }, unauthenticated: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Sign up failed'),
              ),
            );
          });
        },
        child: Stack(
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
                            SizedBox(height: screenHeight * 0.20),
                            NextoneTextField(
                              hintText: 'Email',
                              controller: emailController,
                              keyboardType: TextInputType.text,
                              prefixIcon: const Icon(Icons.email),
                            ),
                            height16,
                            NextoneTextField(
                              hintText: 'Password',
                              controller: passwordController,
                              keyboardType: TextInputType.text,
                              prefixIcon: const Icon(Icons.lock),
                              obscureText: isPasswordVisible.value,
                              suffixIcon: IconButton(
                                icon: isPasswordVisible.value
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () => isPasswordVisible.value =
                                    !isPasswordVisible.value,
                              ),
                            ),
                            height80,
                            NextoneButton(
                              text: 'Sign Up',
                              onPressed: () {
                                context.read<ArtistAuthBloc>().add(
                                      ArtistAuthEvent.onSignUpRequested(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      ),
                                    );
                              },
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
                    const SignUpFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
