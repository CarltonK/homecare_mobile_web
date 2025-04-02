import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/core.dart';

import '../../../../widgets/widgets.dart';
import '../../../features.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;

  bool _isVisible = false;

  final FocusNode lastNameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  void handleRegistration(
    BuildContext context,
    TextEditingController firstNameController,
    TextEditingController lastNameController,
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
    final firstName = firstNameController.text.trim();
    final lastName = lastNameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      GlobalSnackBar.show(context, 'Please enter both email and password');
      return;
    }

    if (!RegExp(AppConstants().emailRegex).hasMatch(email)) {
      GlobalSnackBar.show(context, 'Please enter a valid email address');
      return;
    }

    context.read<AuthBloc>().add(RegistrationRequested(
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName,
        ));
  }

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();

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

  Widget _buildRegistrationForm(BuildContext context, Size size) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          // Navigate to the dashboard
          context.go('/dashboard');
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
                controller: _firstNameController,
                label: 'First Name',
                prefixIcon: Icons.person,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(lastNameFocus);
                },
              ),
              SizedBox(height: Responsive.getProportionalHeight(context, 12)),
              GlobalTextFormField(
                controller: _lastNameController,
                focusNode: lastNameFocus,
                label: 'Last Name',
                prefixIcon: Icons.person,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(emailFocus);
                },
              ),
              SizedBox(height: Responsive.getProportionalHeight(context, 12)),
              GlobalTextFormField(
                controller: _emailController,
                focusNode: emailFocus,
                label: 'Email',
                prefixIcon: Icons.email,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(passwordFocus);
                },
              ),
              SizedBox(height: Responsive.getProportionalHeight(context, 12)),
              GlobalTextFormField(
                controller: _passwordController,
                focusNode: passwordFocus,
                label: 'Password',
                prefixIcon: Icons.lock,
                suffixIcon:
                    !_isVisible ? Icons.visibility : Icons.visibility_off,
                onFieldSubmitted: (_) {
                  if (state is! AuthLoading) {
                    handleRegistration(
                      context,
                      _firstNameController,
                      _lastNameController,
                      _emailController,
                      _passwordController,
                    );
                  }
                },
                onSuffixPressed: () => setState(() => _isVisible = !_isVisible),
                isSensitive: !_isVisible,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: size.height * 0.024),
              MaterialButton(
                onPressed: state is AuthLoading
                    ? null
                    : () => handleRegistration(
                          context,
                          _firstNameController,
                          _lastNameController,
                          _emailController,
                          _passwordController,
                        ),
                color: AppColors.green,
                minWidth: size.width,
                padding: kPadd15,
                child: state is AuthLoading
                    ? const CircularProgressIndicator(color: AppColors.green)
                    : Text(
                        'REGISTER',
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
            _buildRegistrationForm(context, size),
          ],
        ),
        tablet: Row(
          children: [
            GlobalLandingBanner(size: size),
            _buildRegistrationForm(context, size),
          ],
        ),
        mobile: GestureDetector(
          onTap: () => KeyboardUtil.hideKeyboard(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildRegistrationForm(context, size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
