import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repositories/authentication_repository.dart';
import '../bloc/login_bloc.dart';
import 'background/background.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Center(
          child: Text(
            'بسم الله الرحمن الرحیم',
          ),
        ),
      ),*/
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationRepository:
                RepositoryProvider.of<AuthenticationRepository>(context),
          );
        },
        child: Stack(
          children: [
            Background(),
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}
