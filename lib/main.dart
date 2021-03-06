import 'package:flutter/material.dart';
import 'package:gusc/pages/auth/forgot_password.dart';
import 'package:gusc/pages/auth/register.dart';
import 'package:gusc/pages/auth/user.dart';
import 'package:gusc/pages/settings.dart';
import 'package:gusc/services/auth.dart';
import 'package:gusc/wrapper.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Galgotias Student Council',
        home: Wrapper(),
        routes: {
          '/settings': (context) => Settings(),
          '/signup': (context) => RegisterUser(),
          '/register': (context) => RegisterUser(),
          '/forgot_password': (context) => ForgotPassword(),
        },
      ),
    );
  }
}
