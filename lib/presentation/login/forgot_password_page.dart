import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nextone/presentation/shared/validators/nextone_validator.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/nextone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late final TextEditingController emailController;
  bool isEmailValid = false;
  String? feedbackMessage;
  Color feedbackColor = NextOneColors.error;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    final isLoading = authState.maybeMap(
      loading: (_) => true,
      orElse: () => false,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.mapOrNull(
            forgotPasswordEmailSent: (_) {
              setState(() {
                feedbackMessage =
                    'If an account exists for ${emailController.text}, a reset link has been sent.';
                feedbackColor = NextOneColors.success;
              });
            },
            forgotPasswordError: (state) {
              setState(() {
                feedbackMessage = state.message;
                feedbackColor = NextOneColors.error;
              });
            },
          );
        },
        child: Stack(
          children: [
            const BackgroundImage(
              overlayColor: Colors.black87,
            ),
            Padding(
              padding: paddingAll24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Enter your email address and we will send you a link to reset your password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  height32,
                  NextoneTextField(
                    hintText: 'Email',
                    validator: NextoneValidator.validateEmail,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.email),
                    onValidChanged: (valid) => setState(() {
                      isEmailValid = valid;
                    }),
                  ),
                  height16,
                  NextoneButton(
                    text: 'Send Reset Link',
                    isLoading: isLoading,
                    onPressed: (!isEmailValid || isLoading)
                        ? null
                        : () {
                            setState(() {
                              feedbackMessage = null;
                            });
                            context.read<AuthBloc>().add(
                                  AuthEvent.onForgotPasswordRequested(
                                    email: emailController.text,
                                  ),
                                );
                          },
                    type: NextoneButtonType.primary,
                  ),
                  height16,
                  if (feedbackMessage != null)
                    Text(
                      feedbackMessage!,
                      style: TextStyle(
                        color: feedbackColor,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
