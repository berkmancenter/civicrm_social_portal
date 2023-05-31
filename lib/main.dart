import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'views/home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: '../.env');
  runApp(const CivicrmSocialPortal());
}

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
  ],
);

class CivicrmSocialPortal extends StatelessWidget {
  /// Constructs a [MyApp]
  const CivicrmSocialPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

