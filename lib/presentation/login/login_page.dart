import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/validators/nextone_validator.dart';
import 'package:nextone/presentation/shared/widgets/auth_error_widget.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/login/widgets/login_footer.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_logo.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';
import 'package:nextone/nextone.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          state.mapOrNull(
            authenticated: (_) {
              context.router.navigate(const ArtistDashboardRoute());
            },
            unauthenticated: (_) {
              context.router.popAndPush(
                const LoginRoute(),
              );
            },
            needsOnboarding: (_) {
              context.router.navigate(
                const ProfileSetupRoute(),
              );
            },
            error: (errorState) {
              if (!showError || errorMessage != errorState.message) {
                setState(() {
                  showError = true;
                  errorMessage = errorState.message;
                });
              }
            },
          );
          
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
                            SizedBox(height: screenHeight * 0.2),
                            if (showError)
                              AuthErrorWidget(
                                message: errorMessage,
                                onDismiss: () {
                                  setState(() {
                                    showError = false;
                                    errorMessage = '';
                                  });
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
                              onValidChanged: (valid) => setState(() {
                                isEmailValid = valid;
                              }),
                            ),
                            height16,
                            NextoneTextField(
                              hintText: 'Password',
                              validator: NextoneValidator.validatePassword,
                              controller: passwordController,
                              keyboardType: TextInputType.text,
                              prefixIcon: const Icon(Icons.lock),
                              onValidChanged: (valid) => setState(() {
                                isPasswordValid = valid;
                              }),
                              obscureText: isPasswordVisible,
                              suffixIcon: IconButton(
                                icon: isPasswordVisible
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () => setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                }),
                              ),
                            ),
                            height16,
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  context.router
                                      .push(const ForgotPasswordRoute());
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
                              onPressed: (!isFormValid || isLoading)
                                  ? null
                                  : () {
                                      // Clear any existing errors when attempting login
                                      if (showError) {
                                        setState(() {
                                          showError = false;
                                          errorMessage = '';
                                        });
                                      }
                                      context.read<AuthBloc>().add(
                                            AuthEvent.onLoginRequested(
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
                    const LoginFooter(),
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
