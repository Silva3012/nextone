import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/validators/nextone_validator.dart';
import 'package:nextone/presentation/shared/widgets/auth_error_widget.dart';
import 'package:nextone/presentation/sign_up/widgets/sign_up_footer.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_logo.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';
import 'package:nextone/nextone.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isPasswordVisible = true;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool showError = false;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isFormValid = isEmailValid && isPasswordValid;

    final authState = context.watch<AuthBloc>().state;
    final isLoading = authState.maybeMap(
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
            if (role == 'artist' || role == 'supporter') {
              context.router.navigate(
                const ProfileSetupRoute(),
              );
            }
          }, error: (errorState) {
            if (!showError || errorMessage != errorState.message) {
              setState(() {
                showError = true;
                errorMessage = errorState.message;
              });
            }
          });

          state.maybeMap(
            error: (_) {},
            orElse: () {
              if (showError) {
                setState(() {
                  showError = false;
                  errorMessage = '';
                });
              }
            },
          );
        },
        child: Stack(
          children: [
            const BackgroundImage(
              overlayColor: Colors.black87,
            ),
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
                            if (showError)
                              AuthErrorWidget(
                                message: errorMessage,
                                onDismiss: () {
                                  setState(() {
                                    showError = false;
                                    errorMessage = '';
                                  });
                                  // Clear the error state in the bloc
                                  context.read<AuthBloc>().add(
                                        const AuthEvent.onAuthChanged(
                                            user: null),
                                      );
                                },
                              ),
                            NextoneTextField(
                              hintText: 'Email',
                              validator: NextoneValidator.validateEmail,
                              controller: emailController,
                              keyboardType: TextInputType.text,
                              prefixIcon: const Icon(Icons.email),
                              onValidChanged: (isValid) => setState(() {
                                isEmailValid = isValid;
                              }),
                            ),
                            height16,
                            NextoneTextField(
                              hintText: 'Password',
                              validator: NextoneValidator.validatePassword,
                              controller: passwordController,
                              keyboardType: TextInputType.text,
                              prefixIcon: const Icon(Icons.lock),
                              obscureText: isPasswordVisible,
                              suffixIcon: IconButton(
                                icon: isPasswordVisible
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () => setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                }),
                              ),
                              onValidChanged: (isValid) => setState(() {
                                isPasswordValid = isValid;
                              }),
                            ),
                            height80,
                            NextoneButton(
                              text: 'Sign Up',
                              onPressed: (!isFormValid || isLoading)
                                  ? null
                                  : () {
                                      // Clear any existing errors when attempting sign up
                                      if (showError) {
                                        setState(() {
                                          showError = false;
                                          errorMessage = '';
                                        });
                                      }
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
