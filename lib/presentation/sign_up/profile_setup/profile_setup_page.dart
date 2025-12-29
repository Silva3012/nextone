import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/presentation/shared/widgets/nextone_text_field.dart';
import 'package:nextone_core/nextone_core_export.dart';

@RoutePage()
class ProfileSetupPage extends HookWidget {
  const ProfileSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final stageNameController = useTextEditingController();
    final locationController = useTextEditingController();
    final genreController = useTextEditingController();
    final biographyController = useTextEditingController();

    // Form validation
    final stageNameText = useValueListenable(stageNameController);
    final locationText = useValueListenable(locationController);
    final genreText = useValueListenable(genreController);
    final biographyText = useValueListenable(biographyController);

    final isFormValid = stageNameText.text.trim().isNotEmpty &&
        locationText.text.trim().isNotEmpty &&
        genreText.text.trim().isNotEmpty &&
        biographyText.text.trim().isNotEmpty;

    return BlocConsumer<OnboardingAiBloc, OnboardingAiState>(
      listener: (context, state) {
        // Show errors
        if (state.hasError && state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage!)),
          );
        }

        // Populate biography automatically
        if (state.generatedBio != null) {
          biographyController.text = state.generatedBio!;
        }
      },
      builder: (context, state) {
        final bloc = context.read<OnboardingAiBloc>();

        return Scaffold(
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              const BackgroundImage(overlayColor: Colors.black54),
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
                              height32,
                              NextoneTextField(
                                controller: genreController,
                                hintText: 'What type of music do you make?',
                              ),
                              height32,
                              // Generate AI Bio Button
                              state.isLoading
                                  ? const CircularProgressIndicator()
                                  : TextButton.icon(
                                      icon: const Icon(Icons.auto_awesome),
                                      label: const Text('Generate Bio with AI'),
                                      onPressed: () {
                                        final name =
                                            stageNameController.text.trim();
                                        final location =
                                            locationController.text.trim();
                                        final genre =
                                            genreController.text.trim();

                                        if (name.isEmpty ||
                                            location.isEmpty ||
                                            genre.isEmpty) {
                                          return;
                                        }

                                        bloc.add(OnboardingAiEvent.generateBio(
                                          name: name,
                                          location: location,
                                          genre: genre,
                                        ));
                                      },
                                    ),
                              height8,
                              // Biography Field
                              NextoneTextField(
                                controller: biographyController,
                                hintText:
                                    'Let us know about the cool stuff you do! Short bio...',
                                useOutlineBorder: true,
                                maxLines: 5,
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
      },
    );
  }
}
