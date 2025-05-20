import './../../features/features.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part '_app_pages.dart';

class AppRoutes {
  /// use this in [MaterialApp.router]
  static final GoRouter _router = GoRouter(
    initialLocation: AppPages.initial,
    // log diagnostic info for your routes
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppPages.initial,
        builder: AppWidgets.landingViewWidget,
        routes: [
          GoRoute(
            path: AppPages.dashboardView,
            name: 'dashboard',
            builder: AppWidgets.dashboardViewWidget,
          ),
          GoRoute(
            path: AppPages.registrationView,
            name: 'registration',
            builder: AppWidgets.registrationViewWidget,
          ),
          GoRoute(
            path: AppPages.passwordResetView,
            name: 'password-reset',
            builder: AppWidgets.passwordResetViewWidget,
          ),
          GoRoute(
            path: AppPages.completePasswordResetView,
            name: 'complete-password-reset',
            builder: AppWidgets.completePasswordResetViewWidget,
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) {
      return Center(child: Text('${state.error}'));
    },
  );
  static GoRouter get router => _router;
}
