import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone_core/nextone_core_export.dart';

@RoutePage()
class UploadProfilePicturePage extends HookWidget {
  const UploadProfilePicturePage({
    super.key,
    required this.stageName,
    required this.location,
    required this.biography,
    required this.genre,
  });

  final String stageName;
  final String location;
  final String biography;
  final String genre;

  @override
  Widget build(BuildContext context) {
    final selectedImage = useState<File?>(null);
    final error = useState<String?>(null);

    Future<void> pickImage() async {
      error.value = null;
      final picker = ImagePicker();
      try {
        final pickedFile = await picker.pickImage(
            source: ImageSource.gallery, imageQuality: 80);
        if (pickedFile != null) {
          selectedImage.value = File(pickedFile.path);
        }
      } catch (e) {
        error.value = 'Failed to pick image: $e';
      }
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const BackgroundImage(),
          SafeArea(
            child: Padding(
              padding: paddingHorizontal32,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: paddingTop32bottom32,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Now just upload your profile picture...',
                              style: NextOneTextStyles.bodyText1,
                            ),
                            height32,
                            GestureDetector(
                              onTap: pickImage,
                              child: CircleAvatar(
                                radius: 120,
                                backgroundColor: NextOneColors.greySurface,
                                backgroundImage: selectedImage.value != null
                                    ? FileImage(selectedImage.value!)
                                    : null,
                                child: selectedImage.value == null
                                    ? const Icon(Icons.camera_alt,
                                        size: 60,
                                        color: NextOneColors.greySurface)
                                    : null,
                              ),
                            ),
                            height16,
                            if (error.value != null)
                              Text(error.value!,
                                  style: const TextStyle(
                                      color: NextOneColors.error)),
                            height16,
                            const Text(
                              'Tap to select your profile picture',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: NextOneColors.surfaceWhite),
                            ),
                          ],
                        ),
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
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              authenticated: (_) =>
                  context.router.popAndPush(const DashboardRoute()),
              unauthenticated: () => error.value = 'Failed to complete profile',
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoadingState =
                state.maybeMap(loading: (_) => true, orElse: () => false);
            return NextoneButton(
              text: isLoadingState ? 'Uploading...' : 'Finish',
              onPressed: selectedImage.value != null && !isLoadingState
                  ? state.maybeWhen(
                      needsOnboarding: (user) => () {
                        context.read<AuthBloc>().add(
                              AuthEvent.completeOnboarding(
                                user: user,
                                stageName: stageName,
                                location: location,
                                biography: biography,
                                genre: genre,
                                profileImage: selectedImage.value!,
                              ),
                            );
                      },
                      orElse: () => null,
                    )
                  : null,
            );
          },
        ),
      ),
    );
  }
}
