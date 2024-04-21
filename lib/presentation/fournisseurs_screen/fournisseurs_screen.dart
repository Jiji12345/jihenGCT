import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/fournisseurs_bloc.dart';
import 'models/fournisseurs_model.dart';

class FournisseursScreen extends StatelessWidget {
  const FournisseursScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FournisseursBloc>(
      create: (context) => FournisseursBloc(FournisseursState(
        fournisseursModelObj: FournisseursModel(),
      ))
        ..add(FournisseursInitialEvent()),
      child: FournisseursScreen(),
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
                  SizedBox(
                    height: 141.v,
                    width: 276.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse11,
                          height: 128.v,
                          width: 93.h,
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse21,
                                height: 58.v,
                                width: 183.h,
                              ),
                              SizedBox(height: 55.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "msg_welcome_our_supplier".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 34.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFournisseur1,
                    height: 209.v,
                    width: 221.h,
                    margin: EdgeInsets.only(left: 51.h),
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(left: 48.h),
                    child: BlocSelector<FournisseursBloc, FournisseursState,
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
                    text: "lbl_add_offer".tr,
                    margin: EdgeInsets.only(left: 47.h),
                    buttonTextStyle: theme.textTheme.titleLarge!,
                  ),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(left: 48.h),
                    child: BlocSelector<FournisseursBloc, FournisseursState,
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
}
