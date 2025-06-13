import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:nextone_core/nextone_core_export.dart';

part 'artist_auth_event.dart';
part 'artist_auth_state.dart';

part 'artist_auth_bloc.freezed.dart';

@LazySingleton()
class ArtistAuthBloc extends Bloc<ArtistAuthEvent, ArtistAuthState> {
  late final StreamSubscription<ArtistDto?> _artistSubscription;

  ArtistAuthBloc(this._firebaseArtistAuth)
      : super(const ArtistAuthState.unknown()) {
    // Listen to auth changes and add event when it changes
    _artistSubscription = _firebaseArtistAuth.user.listen((artist) {
      add(ArtistAuthEvent.onArtistAuthChanged(artist!));
    });
    on<ArtistAuthEvent>((event, emit) async {
      await event.map(
        onArtistAuthChanged: (e) async {
          final artist = e.artist;
          if (artist != null) {
            emit(ArtistAuthState.authenticated(artist));
          } else {
            emit(const ArtistAuthState.unauthenticated());
          }
        },
        onSignOutRequested: (artist) async {
          await _firebaseArtistAuth.signOut();
          emit(const ArtistAuthState.unauthenticated());
        },
      );
    });
  }

  @override
  Future<void> close() {
    _artistSubscription.cancel();
    return super.close();
  }

  final IFirebaseArtistAuth _firebaseArtistAuth;
}
