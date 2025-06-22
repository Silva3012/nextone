import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/validators/nextone_validator.dart';
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

    final isEmailValid = useState(false);
    final isPasswordValid = useState(false);

    final isFormValid = isEmailValid.value && isPasswordValid.value;

    final isLoading = context.watch<AuthBloc>().state.maybeMap(
          loading: (_) => true,
          orElse: () => false,
        );

    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.mapOrNull(authenticated: (_) {
            context.router.navigate(
              const LoginRoute(),
            );
          }, unauthenticated: (_) {
            context.router.popAndPush(
              const LoginRoute(),
            );
          }, needsRoleSelection: (user) {
            context.router.navigate(
              RoleSelectionRoute(email: user.email, uid: user.uid),
            );
          }, needsOnboarding: (userRole) {
            final role = userRole.user.role;
            if (role == 'artist') {
              context.router.navigate(
                const ProfileSetupRoute(),
              );
            } else if (role == 'supporter') {
              context.router.navigate(
                const ProfileSetupRoute(),
              );
            }
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
                              validator: NextoneValidator.validateEmail,
                              controller: emailController,
                              keyboardType: TextInputType.text,
                              prefixIcon: const Icon(Icons.email),
                              onValidChanged: (isValid) =>
                                  isEmailValid.value = isValid,
                            ),
                            height16,
                            NextoneTextField(
                              hintText: 'Password',
                              validator: NextoneValidator.validatePassword,
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
                              onValidChanged: (isValid) =>
                                  isPasswordValid.value = isValid,
                            ),
                            height80,
                            NextoneButton(
                              text: 'Sign Up',
                              onPressed: (!isFormValid || isLoading)
                                  ? null
                                  : () {
                                      context.read<AuthBloc>().add(
                                            AuthEvent.onSignUpRequested(
                                              email: emailController.text,
                                              password: passwordController.text,
                                            ),
                                          );
                                    },
                              type: NextoneButtonType.primary,
                              isLoading: isLoading,
                            ),
                            // height16,
                            // NextoneButton(
                            //   text: 'Google',
                            //   onPressed: () {},
                            //   type: NextoneButtonType.secondary,
                            // ),
                            // height16,
                            // NextoneButton(
                            //   text: 'Facebook',
                            //   onPressed: () {},
                            //   type: NextoneButtonType.secondary,
                            // ),
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
