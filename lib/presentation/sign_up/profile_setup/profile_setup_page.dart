import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';

@RoutePage()
class ProfileSetupPage extends HookWidget {
  const ProfileSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final stageNameController = useTextEditingController();
    final locationController = useTextEditingController();
    final biographyController = useTextEditingController();
    final genreController = useTextEditingController();

    // Form validation
    final stageNameText = useValueListenable(stageNameController);
    final locationText = useValueListenable(locationController);
    final biographyText = useValueListenable(biographyController);
    final genreText = useValueListenable(genreController);

    final isFormValid = stageNameText.text.trim().isNotEmpty &&
        locationText.text.trim().isNotEmpty &&
        biographyText.text.trim().isNotEmpty &&
        genreText.text.trim().isNotEmpty;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const BackgroundImage(
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
                          const Text(
                            'Let\'s get you all set up, this is step one...',
                            style: NextOneTextStyles.bodyText1,
                          ),
                          height32,
                          NextoneTextField(
                            controller: stageNameController,
                            hintText: 'What is your stage name?',
                          ),
                          height32,
                          NextoneTextField(
                            controller: locationController,
                            hintText: 'Where are you based?',
                          ),
                          height64,
                          NextoneTextField(
                            controller: biographyController,
                            hintText:
                                'Let us know about the cool stuff you do! Short bio...',
                            useOutlineBorder: true,
                          ),
                          height32,
                          NextoneTextField(
                            controller: genreController,
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
          onPressed: isFormValid
              ? () {
                  context.router.navigate(
                    UploadProfilePictureRoute(
                      stageName: stageNameController.text.trim(),
                      location: locationController.text.trim(),
                      biography: biographyController.text.trim(),
                      genre: genreController.text.trim(),
                    ),
                  );
                }
              : null,
        ),
      ),
    );
  }
}
