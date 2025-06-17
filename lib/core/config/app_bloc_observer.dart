import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log(
      '🆕 BLoC CREATED: ${bloc.runtimeType}',
      name: '🔵 BLoC',
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log(
      '📨 EVENT: ${bloc.runtimeType} => $event',
      name: '🔵 BLoC',
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log(
      '🔁 STATE CHANGE: ${bloc.runtimeType}\n'
      '  FROM: ${change.currentState}\n'
      '  TO:   ${change.nextState}',
      name: '🔵 BLoC',
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log(
      '➡️ TRANSITION: ${bloc.runtimeType}\n'
      '  CURRENT STATE: ${transition.currentState}\n'
      '  EVENT:         ${transition.event}\n'
      '  NEXT STATE:    ${transition.nextState}',
      name: '🔵 BLoC',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log(
      '❌ ERROR in ${bloc.runtimeType}\n'
      '  ERROR: $error\n'
      '  STACKTRACE:\n$stackTrace',
      name: '🔴 BLoC',
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log(
      '🛑 BLoC CLOSED: ${bloc.runtimeType}',
      name: '🔵 BLoC',
    );
  }
}
