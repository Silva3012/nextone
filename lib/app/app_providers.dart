import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nextone_core/nextone_core_export.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArtistAuthBloc>(
          create: (context) => getItSL<ArtistAuthBloc>(),
        ),
      ],
      child: child,
    );
  }
}
