import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nextone/presentation/shared/validators/nextone_validator.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/nextone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ForgotPasswordPage extends HookWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final isEmailValid = useState(false);
    final feedbackMessage = useState<String?>(null);
    final feedbackColor = useState<Color>(NextOneColors.error);

    final authState = context.watch<AuthBloc>().state;
    final isLoading = authState.maybeMap(
      loading: (_) => true,
      orElse: () => false,
    );

    // Listen for feedback states
    useEffect(() {
      authState.mapOrNull(
        forgotPasswordEmailSent: (_) {
          feedbackMessage.value =
              'If an account exists for ${emailController.text}, a reset link has been sent.';
          feedbackColor.value = NextOneColors.success;
        },
        forgotPasswordError: (state) {
          feedbackMessage.value = state.message;
          feedbackColor.value = NextOneColors.error;
        },
      );
      return null;
    }, [authState]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Stack(
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
                  onValidChanged: (valid) => isEmailValid.value = valid,
                ),
                height16,
                NextoneButton(
                  text: 'Send Reset Link',
                  isLoading: isLoading,
                  onPressed: (!isEmailValid.value || isLoading)
                      ? null
                      : () {
                          feedbackMessage.value = null;
                          context.read<AuthBloc>().add(
                                AuthEvent.onForgotPasswordRequested(
                                  email: emailController.text,
                                ),
                              );
                        },
                  type: NextoneButtonType.primary,
                ),
                height16,
                if (feedbackMessage.value != null)
                  Text(
                    feedbackMessage.value!,
                    style: TextStyle(
                      color: feedbackColor.value,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
