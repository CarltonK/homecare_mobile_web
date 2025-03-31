import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homecare_mobile/core/styles/style.dart';
import '../../../../core/utilities/utilities.dart';
import '../../../../widgets/widgets.dart';
import '../../../authentication/authentication.dart';
import '../../dashboard.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final bool _shouldPop = false;

  Future<void> _showExitConfirmation(BuildContext context) async {
    logger.d('Exiting...');
    final bool shouldExit = await ExitConfirmationDialog.show(
      context,
      title: 'Confirm Exit',
      message: 'Do you really want to leave?',
      confirmText: 'Yes, Exit',
      cancelText: 'No, Stay',
      confirmColor: Colors.redAccent,
      cancelColor: Colors.green,
    );

    if (shouldExit && context.mounted) {
      context.read<AuthBloc>().add(LogoutRequested());
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _shouldPop,
      onPopInvokedWithResult: (didPop, result) async {
        if (!didPop) await _showExitConfirmation(context);
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            GlobalCircleButton(
              icon: Icons.exit_to_app,
              color: AppColors.black,
              onPressed: () async {
                await _showExitConfirmation(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
