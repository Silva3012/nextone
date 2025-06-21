import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nextone/presentation/shared/widgets/background_image.dart';
import 'package:nextone_core/nextone_core_export.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.onSignOutRequested());
            },
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Stack(
        children: [
          const BackgroundImage(),
          Center(
            child: Text(
              'This will be the dashboard page without this nice background image. of course',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
