import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/details_page.dart';
import 'screens/home_page.dart';
import 'widgets/layout_template.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'details',
            builder: (context, state) => const DetailsPage(),
          ),
        ],
      ),
    ],
    navigatorBuilder: (context, state, child) => LayoutTemplate(child: child),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: "Distant Order",
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) => Container(
                child: child,
              ),
            ),
          ],
        );
      },
    );
  }
}
