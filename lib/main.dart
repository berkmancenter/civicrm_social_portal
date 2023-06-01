import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'router_config.dart';

Future main() async {
  await dotenv.load(fileName: 'assets/.env');
  runApp(const FlutterSocialMediaApp());
}

class FlutterSocialMediaApp extends StatelessWidget {
  const FlutterSocialMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
