part of 'app_routes.dart';

class AppPages {
  //  initial route
  static const initial = '/';

  // Authentication
  static const registrationView = 'registration';
  static const passwordResetView = 'password-reset';
  static const completePasswordResetView = 'complete-password-reset';

  // Dashboard
  static const dashboardView = 'dashboard';
}

class AppWidgets {
  /*
   * Authentication
   */
  static Widget landingViewWidget(
    BuildContext context,
    GoRouterState state,
  ) =>
      const LandingPage();

  static Widget registrationViewWidget(
    BuildContext context,
    GoRouterState state,
  ) =>
      const RegistrationPage();

  static Widget passwordResetViewWidget(
    BuildContext context,
    GoRouterState state,
  ) =>
      const ResetPasswordPage();

  static Widget completePasswordResetViewWidget(
    BuildContext context,
    GoRouterState state,
  ) =>
      const CompletePasswordReset();

  /*
   * Dashboard
   */
  static Widget dashboardViewWidget(
    BuildContext context,
    GoRouterState state,
  ) =>
      const DashboardPage();
}
