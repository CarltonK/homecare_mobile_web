import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/core.dart';
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
  void initState() {
    super.initState();

    context.read<AuthBloc>().add(FetchUserDetails());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthUserDetailsSuccess) {
          final user = state.model;
          logger.d(user);
        } else if (state is AuthResponse) {
          late bool isSuccess = false;
          late String msg = 'Success';

          if (state.model.message != null) {
            isSuccess = true;
            msg = state.model.message!;
            context.pop();
          } else if (state.model.error != null) {
            msg = state.model.error!;
          } else if (state.model.validationErrors != null) {
            msg = state.model.validationErrors!.email!.join(',');
          }

          GlobalSnackBar.show(context, msg, isSuccess: isSuccess);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Center(child: CircularProgressIndicator());
        }
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
      },
    );
  }
}
