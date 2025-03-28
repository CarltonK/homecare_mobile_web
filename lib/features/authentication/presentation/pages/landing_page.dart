import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/core.dart';
import '../../../../widgets/widgets.dart';
import '../../../features.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final FocusNode passwordFocus = FocusNode();
  bool _isCredsSaved = false;
  bool _isVisible = false;

  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  void handleLogin(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
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

    context
        .read<AuthBloc>()
        .add(LoginRequested(email: email, password: password));
  }

  /* 
   * Landing Form
   */
  Widget _buildLandingForm(BuildContext context, Size size) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          // Navigate to the dashboard
          context.go('/dashboard');
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
                    handleLogin(context, _emailController, _passwordController);
                  }
                },
                onSuffixPressed: () => setState(() => _isVisible = !_isVisible),
                isSensitive: !_isVisible,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: size.height * 0.024),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        activeColor: AppColors.green,
                        value: _isCredsSaved,
                        onChanged: (value) {
                          setState(() => _isCredsSaved = value!);
                        },
                      ),
                      kGap5,
                      Text('Remember me', style: kLightBlack),
                    ],
                  ),
                  TextButton(
                    onPressed: () => context.pushNamed('password-reset'),
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.backgroundGrey,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: kRadius10),
                    ),
                    child: Text('Forgot Password ?', style: kLightBlack),
                  ),
                ],
              ),
              SizedBox(height: Responsive.getProportionalHeight(context, 24)),
              MaterialButton(
                onPressed: state is AuthLoading
                    ? null
                    : () => handleLogin(
                        context, _emailController, _passwordController),
                color: AppColors.green,
                minWidth: size.width,
                padding: kPadd15,
                child: state is AuthLoading
                    ? const CircularProgressIndicator(color: AppColors.white)
                    : Text(
                        'LOGIN',
                        style: kNormalWhite.copyWith(fontSize: 20),
                      ),
              ),
              kGap24,
              const LoginDividerWidget(),
              kGap8,
              const GoogleSignInWidget(),
              kGap16,
              GlobalMultiInfoActionButton(
                primaryText: 'Don\'t have an account ? ',
                secondaryText: 'Sign Up',
                onTap: () => context.pushNamed('registration'),
              ),
            ],
          ),
        );
      },
    );
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

  /* 
   * Landing Banner
   */
  Widget _buildLandingBanner(Size size) {
    return SizedBox(
      width: size.width * .5,
      height: size.height,
      child: Image.asset(
        'assets/launcher/homecare_gps_logo.png',
        fit: BoxFit.contain,
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        desktop: Row(
          children: [
            _buildLandingForm(context, size),
            _buildLandingBanner(size),
          ],
        ),
        tablet: Row(
          children: [
            _buildLandingForm(context, size),
            _buildLandingBanner(size),
          ],
        ),
        mobile: GestureDetector(
          onTap: () => KeyboardUtil.hideKeyboard(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildLandingForm(context, size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginDividerWidget extends StatelessWidget {
  const LoginDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.backgroundGrey,
            height: Responsive.getProportionalHeight(context, 12),
            endIndent: Responsive.getProportionalWidth(context, 9.5),
          ),
        ),
        Text('or', style: kLightBlack),
        Expanded(
          child: Divider(
            color: AppColors.backgroundGrey,
            height: Responsive.getProportionalHeight(context, 12),
            endIndent: Responsive.getProportionalWidth(context, 9.5),
          ),
        ),
      ],
    );
  }
}

class GoogleSignInWidget extends StatelessWidget {
  const GoogleSignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => GlobalSnackBar.show(
          context,
          'Coming soon',
          backgroundColor: AppColors.green,
        ),
        child: Container(
          height: Responsive.getProportionalHeight(context, 50),
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.getProportionalWidth(context, 60),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                AppConstants().googleIcon,
                height: Responsive.getProportionalHeight(context, 18),
                width: Responsive.getProportionalWidth(context, 18),
              ),
              SizedBox(width: Responsive.getProportionalWidth(context, 18)),
              Text('Continue with Google', style: kNormalBlack),
            ],
          ),
        ),
      ),
    );
  }
}
