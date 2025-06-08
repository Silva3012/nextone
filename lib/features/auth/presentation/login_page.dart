import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/features/auth/presentation/widgets/background_image.dart';
import 'package:nextone/features/auth/presentation/widgets/nextone_logo.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: paddingLeft120top80,
                  child: NextoneLogo(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
