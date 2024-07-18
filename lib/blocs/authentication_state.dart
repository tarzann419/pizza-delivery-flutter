part of 'authentication_bloc.dart';

enum AuthenticationStatus {authenticated, unauthenticated, unknown}


class AuthenticationState extends Equatable{
  const AuthenticationState._({

  });

  final AuthenticationStatus status;
}