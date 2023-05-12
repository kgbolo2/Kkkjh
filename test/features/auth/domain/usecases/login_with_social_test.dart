import 'dart:convert';

import 'package:auth/models/auth_payload_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:waterbus/core/error/failures.dart';
import 'package:waterbus/features/auth/domain/entities/user.dart';
import 'package:waterbus/features/auth/domain/repositories/auth_repository.dart';
import 'package:waterbus/features/auth/domain/usecases/login_with_social.dart';

import '../../../../constants/sample_file_path.dart';
import '../../../../fixtures/fixture_reader.dart';
import 'check_auth_test.mocks.dart';

@GenerateNiceMocks([MockSpec<AuthRepository>()])
void main() {
  late LoginWithSocial usecase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = LoginWithSocial(mockAuthRepository);
  });

  test(
    'should sign in successful',
    () async {
      // arrange
      final Map<String, dynamic> userJson = jsonDecode(
        fixture(userSample),
      );

      // act
      final User user = User.fromMap(userJson);

      final AuthParams authParamsSample = AuthParams(
        payloadModel: AuthPayloadModel(
          fullName: 'Kai',
          googleId: 'lambiengcode',
        ),
      );

      when(
        mockAuthRepository.loginWithSocial(authParamsSample),
      ).thenAnswer(
        (realInvocation) => Future.value(Right(user)),
      );

      // act
      final Either<Failure, User> result = await usecase.call(authParamsSample);

      // assert
      expect(
        result.isRight(),
        Right<Failure, User>(user).isRight(),
      );

      verify(mockAuthRepository.loginWithSocial(authParamsSample));
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );
}
