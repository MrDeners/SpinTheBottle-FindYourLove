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
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: AppDimens.contentPadding16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
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
                    width: MediaQuery.of(context).size.width * 0.33,
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
              ),
              const Padding(
                padding: EdgeInsets.only(top: AppDimens.contentPadding16),
              ),
              AppButton(
                isExpanded: false,
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
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: AppDimens.contentPadding16),
              ),
              AppButton(
                isExpanded: false,
                onTap: () {
                  context.read<SignInBloc>().add(
                        const NavigateToSignUpEvent(),
                      );
                },
                child: Text(
                  LocaleKeys.authScreen_createAccount.watchTr(context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
