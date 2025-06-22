// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../nextone_core_export.dart' as _i315;
import '../application/auth/auth_bloc.dart' as _i122;
import '../repositories/implementations/user_repository/user_repository.dart'
    as _i411;
import '../repositories/repositories_export.dart' as _i233;
import '../services/implementations/auth/auth_service.dart' as _i545;
import '../services/services_exports.dart' as _i668;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i315.IUserRepository>(
        () => _i411.UserRepository(firestore: gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i668.IAuthService>(
        () => _i545.AuthService(firebaseAuth: gh<_i59.FirebaseAuth>()));
    gh.lazySingleton<_i122.AuthBloc>(() => _i122.AuthBloc(
          gh<_i668.IAuthService>(),
          gh<_i233.IUserRepository>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i464.FirebaseModule {}
