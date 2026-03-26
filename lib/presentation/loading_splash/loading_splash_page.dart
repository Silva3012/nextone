import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nextone/app/router/app_router.gr.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_icon.dart';

@RoutePage()
class LoadingSplashPage extends StatefulWidget {
  const LoadingSplashPage({super.key});

  @override
  State<LoadingSplashPage> createState() => _LoadingSplashPageState();
}

class _LoadingSplashPageState extends State<LoadingSplashPage> {
  double progress = 0.0;
  bool isLoading = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    const updateInterval = Duration(milliseconds: 100);
    const progressIncrement = 0.01;

    _timer = Timer.periodic(updateInterval, (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      if (progress < 1.0) {
        setState(() {
          progress += progressIncrement;
        });
      } else {
        timer.cancel();
        setState(() {
          isLoading = false;
        });
        Future.delayed(const Duration(milliseconds: 500), () {
          if (!mounted) return;
          context.router.popAndPush(const ArtistDashboardRoute());
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      value: progress,
                      backgroundColor: Colors.grey[600],
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  height32,
                  Text(
                    '${(progress * 100).toInt()}%',
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
