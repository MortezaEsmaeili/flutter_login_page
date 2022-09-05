import 'package:flutter/material.dart';

import 'app.dart';
import 'repositories/authentication_repository.dart';
import 'repositories/uesr_repository/user_repository.dart';

void main() {
  runApp(
    App(
      authenticationRepository: AuthenticationRepository(),
      userRepository: UserRepository(),
    ),
  );
}
