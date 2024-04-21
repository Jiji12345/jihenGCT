import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_bloc.dart';
import 'models/login_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                decoration: AppDecoration.fillGray,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 128.v,
                        width: 183.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse1,
                              height: 128.v,
                              width: 93.h,
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse2,
                              height: 58.v,
                              width: 183.h,
                              alignment: Alignment.topCenter,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 31.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 113.h),
                        child: Text(
                          "lbl_welcome".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup5,
                      height: 170.v,
                      width: 171.h,
                    ),
                    SizedBox(height: 46.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        right: 18.h,
                      ),
                      child: BlocSelector<LoginBloc, LoginState,
                          TextEditingController?>(
                        selector: (state) => state.emailController,
                        builder: (context, emailController) {
                          return CustomTextFormField(
                            controller: emailController,
                            hintText: "msg_enter_your_email".tr,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 14.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillOnPrimaryContainer,
                            fillColor: theme.colorScheme.onPrimaryContainer,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        right: 18.h,
                      ),
                      child: BlocSelector<LoginBloc, LoginState,
                          TextEditingController?>(
                        selector: (state) => state.passwordController,
                        builder: (context, passwordController) {
                          return CustomTextFormField(
                            controller: passwordController,
                            hintText: "lbl_enter_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 14.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillOnPrimaryContainer,
                            fillColor: theme.colorScheme.onPrimaryContainer,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 45.v),
                    CustomElevatedButton(
                      text: "lbl_sign_in".tr,
                      margin: EdgeInsets.only(
                        left: 17.h,
                        right: 18.h,
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOnPrimaryContainer,
                    ),
                    SizedBox(height: 45.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
