import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/employeurs_bloc.dart';
import 'models/employeurs_model.dart';

class EmployeursScreen extends StatelessWidget {
  const EmployeursScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EmployeursBloc>(
      create: (context) => EmployeursBloc(EmployeursState(
        employeursModelObj: EmployeursModel(),
      ))
        ..add(EmployeursInitialEvent()),
      child: EmployeursScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              decoration: AppDecoration.fillGray,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWelcomeOurEmployer(context),
                  SizedBox(height: 2.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgEmployeur1,
                    height: 258.v,
                    width: 252.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(left: 48.h),
                    child: BlocSelector<EmployeursBloc, EmployeursState,
                        TextEditingController?>(
                      selector: (state) => state.profilevalueController,
                      builder: (context, profilevalueController) {
                        return CustomTextFormField(
                          width: 240.h,
                          controller: profilevalueController,
                          hintText: "lbl_profile".tr,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 39.v),
                  CustomElevatedButton(
                    height: 53.v,
                    width: 240.h,
                    text: "lbl_supplier".tr,
                    margin: EdgeInsets.only(left: 47.h),
                    buttonTextStyle: theme.textTheme.titleLarge!,
                  ),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(left: 48.h),
                    child: BlocSelector<EmployeursBloc, EmployeursState,
                        TextEditingController?>(
                      selector: (state) => state.chatvalueoneController,
                      builder: (context, chatvalueoneController) {
                        return CustomTextFormField(
                          width: 240.h,
                          controller: chatvalueoneController,
                          hintText: "lbl_chat".tr,
                          hintStyle: CustomTextStyles.titleLargeOnPrimary,
                          textInputAction: TextInputAction.done,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 31.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeOurEmployer(BuildContext context) {
    return SizedBox(
      height: 142.v,
      width: 289.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1132x106,
            height: 132.v,
            width: 106.h,
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse262x196,
                  height: 62.v,
                  width: 196.h,
                ),
                SizedBox(height: 52.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_welcome_our_employer".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
