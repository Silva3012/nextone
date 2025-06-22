import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';

@RoutePage()
class UploadProfilePicturePage extends StatelessWidget {
  const UploadProfilePicturePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                            // Placeholder for image upload widget
                            CircleAvatar(
                              radius: 120,
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.camera_alt,
                                  size: 60, color: Colors.grey[600]),
                            ),
                            height32,
                            const Text(
                              'Upload your profile picture',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
        child: NextoneButton(
          text: 'Finish',
          onPressed: () {
            context.router.popAndPush(const LoginRoute());
          },
        ),
      ),
    );
  }
}
