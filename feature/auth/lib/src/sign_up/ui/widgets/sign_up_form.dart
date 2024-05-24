import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../../../../constants/auth_constants.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (BuildContext context, SignUpState state) {
        if (state.toast != null) {
          AppToast.showToast(
            state.toast!.type,
            state.toast!.message,
            context,
          );
        }
      },
      builder: (BuildContext context, SignUpState state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppIcons.backArrow.call(
                onTap: () {
                  context.read<SignUpBloc>().add(const NavigateBackEvent());
                },
              ),
              Center(
                child: Text(
                  LocaleKeys.authScreen_signUp.watchTr(context),
                  style: AppFonts.primary40,
                ),
              ),
              const Spacer(flex: 5),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: AppSignInputField(
                      title: LocaleKeys.authScreen_name.watchTr(context),
                      error: state.validationErrors[AuthConstants.nameError],
                      controller: nameController,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: AppSignInputField(
                      title: LocaleKeys.authScreen_email.watchTr(context),
                      error: state.validationErrors[AuthConstants.emailError],
                      controller: emailController,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: AppSignInputField(
                      title: LocaleKeys.authScreen_password.watchTr(context),
                      error: state.validationErrors[AuthConstants.passwordError],
                      isPassword: true,
                      controller: passwordController,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: AppSignInputField(
                      title: LocaleKeys.authScreen_confirmPassword.watchTr(context),
                      error: state.validationErrors[AuthConstants.confirmPasswordError],
                      isPassword: true,
                      controller: confirmPasswordController,
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 5),
              AppButton(
                text: LocaleKeys.authScreen_signUpSecondary.watchTr(context),
                onTap: () {
                  context.read<SignUpBloc>().add(
                        SignUp(
                          name: nameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          confirmPassword: confirmPasswordController.text,
                        ),
                      );
                },
              ),
              const Spacer(flex: 5),
            ],
          ),
        );
      },
    );
  }
}
