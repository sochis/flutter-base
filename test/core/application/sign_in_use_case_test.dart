import 'package:flutter_base/core/interfaces/i_auth_repository.dart';
import 'package:flutter_base/features/auth/application/sign_in_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

void main() {
  late SignInUseCase signInUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    signInUseCase = SignInUseCase(mockAuthRepository);
  });

  test('should call signIn with correct parameters', () async {
    const String email = 'test@example.com';
    const String password = 'password123';

    when(
      mockAuthRepository.signIn(email, password),
    ).thenAnswer((_) => Future<void>.value());

    await signInUseCase(SignInParams(email: email, password: password));

    verify(mockAuthRepository.signIn(email, password)).called(1);
  });
}
