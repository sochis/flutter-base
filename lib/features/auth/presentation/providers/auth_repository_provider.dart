import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../infrastructure/auth_repository.dart';
import '../../../../core/interfaces/i_auth_repository.dart';

final Provider<IAuthRepository> authRepositoryProvider =
    Provider<IAuthRepository>((ProviderRef<IAuthRepository> ref) {
      return AuthRepository();
    });
