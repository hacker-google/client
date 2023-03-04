import 'package:flutter/material.dart';
import '../views/widgets/_widgets.dart';
import '../../routes/routes_factory.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        title: 'Flutter Demo',
        onGenerateRoute: (settings) {
          return MaterialPageRoute<void>(
            settings: settings,
            builder: (_) => getScreenByName(settings.name!),
          );
        },
      ),
    );
  }
}
