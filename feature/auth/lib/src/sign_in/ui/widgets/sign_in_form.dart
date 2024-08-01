import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../../../../constants/auth_constants.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (BuildContext context, SignInState state) {
        if (state.toast != null) {
          AppToast.showToast(
            state.toast!.type,
            state.toast!.message,
            context,
          );
        }
      },
      builder: (BuildContext context, SignInState state) {
        return SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: constraints.maxWidth * 0.35,
                        child: AppSignInputField(
                          controller: loginController,
                          title: LocaleKeys.authScreen_email.watchTr(context),
                          error: context
                              .read<SignInBloc>()
                              .state
                              .validationErrors[AuthConstants.emailError],
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.35,
                        child: AppSignInputField(
                          title: LocaleKeys.authScreen_password.watchTr(context),
                          error: context
                              .read<SignInBloc>()
                              .state
                              .validationErrors[AuthConstants.passwordError],
                          isPassword: true,
                          controller: passwordController,
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: AppDimens.contentPadding16),
              Row(
                children: <Widget>[
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        AppButton(
                          onTap: () {
                            context.read<SignInBloc>().add(
                                  SignIn(
                                    email: loginController.text,
                                    password: passwordController.text,
                                  ),
                                );
                          },
                          child: Text(
                            LocaleKeys.authScreen_logIn.watchTr(context),
                            style: AppFonts.primary18,
                          ),
                        ),
                        const SizedBox(height: AppDimens.contentPadding20),
                        AppButton(
                          onTap: () {
                            context.read<SignInBloc>().add(
                                  const NavigateToSignUpEvent(),
                                );
                          },
                          child: Text(
                            LocaleKeys.authScreen_createAccount.watchTr(context),
                            style: AppFonts.primary18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
