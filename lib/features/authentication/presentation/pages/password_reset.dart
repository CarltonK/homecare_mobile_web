import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../widgets/widgets.dart';
import '../../../features.dart';
import '../../../../core/core.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late TextEditingController _emailController;

  void handlePasswordReset(
    BuildContext context,
    TextEditingController emailController,
  ) {
    final email = emailController.text.trim();

    if (email.isEmpty) {
      GlobalSnackBar.show(context, 'Please enter your email');
      return;
    }

    if (!RegExp(AppConstants().emailRegex).hasMatch(email)) {
      GlobalSnackBar.show(context, 'Please enter a valid email address');
      return;
    }

    context.read<AuthBloc>().add(PasswordResetRequested(email: email));
  }

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
  }

  Widget _buildLandingFormHeader(Size size) {
    return Responsive.isMobile(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: Responsive.getProportionalHeight(context, 120),
                  child: Image.asset(
                    'assets/launcher/homecare_gps_logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          )
        : const SizedBox.shrink();
  }

  Widget _buildPasswordResetForm(BuildContext context, Size size) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          // Navigate back
          context.pop();
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

          // Navigate back if "message" key in model
        } else if (state is AuthFailure) {
          GlobalSnackBar.show(context, state.message);
        }
      },
      builder: (context, state) {
        final double formWidth = Responsive.isDesktop(context)
            ? size.width * 0.5
            : Responsive.isTablet(context)
                ? size.width * 0.5
                : size.width;

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.getProportionalWidth(context, 20),
          ),
          width: formWidth,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLandingFormHeader(size),
              SizedBox(height: Responsive.getProportionalHeight(context, 12)),
              GlobalTextFormField(
                controller: _emailController,
                label: 'Email',
                prefixIcon: Icons.email,
                onFieldSubmitted: (_) {
                  if (state is! AuthLoading) {
                    handlePasswordReset(context, _emailController);
                  }
                },
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: size.height * 0.024),
              MaterialButton(
                onPressed: state is AuthLoading
                    ? null
                    : () => handlePasswordReset(context, _emailController),
                color: AppColors.green,
                minWidth: size.width,
                padding: kPadd15,
                child: state is AuthLoading
                    ? const CircularProgressIndicator(color: AppColors.green)
                    : Text(
                        'RESET',
                        style: kNormalWhite.copyWith(fontSize: 20),
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        desktop: Row(
          children: [
            GlobalLandingBanner(size: size),
            _buildPasswordResetForm(context, size),
          ],
        ),
        tablet: Row(
          children: [
            GlobalLandingBanner(size: size),
            _buildPasswordResetForm(context, size),
          ],
        ),
        mobile: GestureDetector(
          onTap: () => KeyboardUtil.hideKeyboard(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildPasswordResetForm(context, size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
