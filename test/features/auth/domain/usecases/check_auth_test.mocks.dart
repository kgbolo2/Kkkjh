// Mocks generated by Mockito 5.4.0 from annotations
// in waterbus/test/features/auth/domain/usecases/check_auth_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Dart imports:
import 'dart:async' as _i4;

// Package imports:
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// Project imports:
import 'package:waterbus/core/error/failures.dart' as _i5;
import 'package:waterbus/features/auth/domain/entities/user.dart' as _i6;

import 'package:waterbus/features/auth/domain/repositories/auth_repository.dart'
    as _i3;
import 'package:waterbus/features/auth/domain/usecases/login_with_social.dart'
    as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i3.AuthRepository {
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.User>> onAuthCheck() =>
      (super.noSuchMethod(
        Invocation.method(
          #onAuthCheck,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.User>>.value(
            _FakeEither_0<_i5.Failure, _i6.User>(
          this,
          Invocation.method(
            #onAuthCheck,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.User>>.value(
                _FakeEither_0<_i5.Failure, _i6.User>(
          this,
          Invocation.method(
            #onAuthCheck,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.User>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.User>> loginWithSocial(
          _i7.AuthParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #loginWithSocial,
          [params],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.User>>.value(
            _FakeEither_0<_i5.Failure, _i6.User>(
          this,
          Invocation.method(
            #loginWithSocial,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.User>>.value(
                _FakeEither_0<_i5.Failure, _i6.User>(
          this,
          Invocation.method(
            #loginWithSocial,
            [params],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.User>>);
}
