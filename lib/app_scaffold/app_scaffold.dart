import 'package:flutter/material.dart';
import 'app_scaffold_state_.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<AppScaffold> createState() => AppScaffoldState();
}
