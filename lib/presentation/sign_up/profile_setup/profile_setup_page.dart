import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';

@RoutePage()
class ProfileSetupPage extends StatelessWidget {
  const ProfileSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: const Stack(
        children: [
          BackgroundImage(
            overlayColor: Colors.black54,
          ),
          SafeArea(
            child: Padding(
              padding: paddingHorizontal32,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: paddingTop32bottom32,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Let’s get you all set up, this is step one...',
                            style: NextOneTextStyles.bodyText1,
                          ),
                          height32,
                          NextoneTextField(
                            hintText: 'What is your stage name?',
                          ),
                          height32,
                          NextoneTextField(
                            hintText: 'Where are you based?',
                          ),
                          height64,
                          NextoneTextField(
                            hintText:
                                'Let us know about the cool stuff you do! Short bio...',
                            useOutlineBorder: true,
                          ),
                          height32,
                          NextoneTextField(
                            hintText: 'What type of music do you make?',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: paddingVertical32Horizontal16,
        child: NextoneButton(
          text: 'Next',
          onPressed: () {
            context.router.navigate(
              const UploadProfilePictureRoute(),
            );
          },
        ),
      ),
    );
  }
}
