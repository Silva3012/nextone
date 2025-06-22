import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone_core/nextone_core_export.dart';

@RoutePage()
class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key, required this.email, required this.uid});

  final String email;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Select your role',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: NextOneColors.textPrimary,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            height32,
            NextoneButton(
              text: 'Artist',
              onPressed: () {
                context.read<AuthBloc>().add(
                      AuthEvent.onRoleSelected(
                        uid: uid,
                        email: email,
                        role: 'artist',
                      ),
                    );
              },
            ),
            height32,
            NextoneButton(
              text: 'Supporter',
              onPressed: () {
                context.read<AuthBloc>().add(
                      AuthEvent.onRoleSelected(
                        uid: uid,
                        email: email,
                        role: 'supporter',
                      ),
                    );
              },
            ),
          ],
        ),
      ],
    );
  }
}
