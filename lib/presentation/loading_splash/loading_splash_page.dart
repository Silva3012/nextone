import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_icon.dart';

@RoutePage()
class LoadingSplashPage extends HookWidget {
  const LoadingSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final progress = useState(0.0);
    final isLoading = useState(true);

    useEffect(() {
      const updateInterval = Duration(milliseconds: 100);
      const progressIncrement = 0.01;

      final timer = Timer.periodic(updateInterval, (timer) {
        if (progress.value < 1.0) {
          progress.value += progressIncrement;
        } else {
          timer.cancel();
          isLoading.value = false;
          // Navigate to dashboard after completion
          final router = context.router;
          Future.delayed(const Duration(milliseconds: 500), () {
            router.popAndPush(const DashboardRoute());
          });
        }
      });

      return () => timer.cancel();
    }, []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const BackgroundImage(),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Hang tight, while we getting you all setup...',
                    style: NextOneTextStyles.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  height32,
                  const NextoneIcon(),
                  height32,
                  SizedBox(
                    height: 5,
                    width: 200,
                    child: LinearProgressIndicator(
                      value: progress.value,
                      backgroundColor: Colors.grey[600],
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  height32,
                  Text(
                    '${(progress.value * 100).toInt()}%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
