import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone/nextone.dart';

@RoutePage()
class RoleSelectionPage extends StatefulWidget {
  const RoleSelectionPage({super.key, required this.email, required this.uid});

  final String email;
  final String uid;

  @override
  State<RoleSelectionPage> createState() => _RoleSelectionPageState();
}

class _RoleSelectionPageState extends State<RoleSelectionPage> {
  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<AuthBloc>().state.maybeMap(
          loading: (_) => true,
          orElse: () => false,
        );
    final isArtistLoading = selectedRole == 'artist' && isLoading;
    final isSupporterLoading = selectedRole == 'supporter' && isLoading;

    return Stack(
      children: [
        const BackgroundImage(
          overlayColor: Colors.black45,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: paddingTop32,
              child: Center(
                child: Text(
                  'Select your role',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: NextOneColors.textPrimary,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
            height32,
            NextoneButton(
              text: 'Artist',
              onPressed: isLoading
                  ? null
                  : () {
                      setState(() {
                        selectedRole = 'artist';
                      });
                      context.read<AuthBloc>().add(
                            AuthEvent.onRoleSelected(
                              uid: widget.uid,
                              email: widget.email,
                              role: 'artist',
                            ),
                          );
                    },
              isLoading: isArtistLoading,
            ),
            height32,
            NextoneButton(
              text: 'Supporter',
              onPressed: isLoading
                  ? null
                  : () {
                      setState(() {
                        selectedRole = 'supporter';
                      });
                      context.read<AuthBloc>().add(
                            AuthEvent.onRoleSelected(
                              uid: widget.uid,
                              email: widget.email,
                              role: 'supporter',
                            ),
                          );
                    },
              isLoading: isSupporterLoading,
            ),
          ],
        ),
      ],
    );
  }
}
