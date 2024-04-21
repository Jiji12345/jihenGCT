import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/page_de_garde_bloc.dart';
import 'models/page_de_garde_model.dart';

class PageDeGardeScreen extends StatelessWidget {
  const PageDeGardeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageDeGardeBloc>(
      create: (context) => PageDeGardeBloc(PageDeGardeState(
        pageDeGardeModelObj: PageDeGardeModel(),
      ))
        ..add(PageDeGardeInitialEvent()),
      child: PageDeGardeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageDeGardeBloc, PageDeGardeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  decoration: AppDecoration.fillSecondaryContainer,
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup62,
                        height: 128.v,
                        width: 341.h,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(height: 105.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 151.v,
                        width: 153.h,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_groupe_chimique".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 31.v),
                      Container(
                        width: 267.h,
                        margin: EdgeInsets.symmetric(horizontal: 46.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_simplify_product2".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "msg_chemical_group_tunis".tr,
                                style: theme.textTheme.labelLarge,
                              )
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 88.v),
                      CustomElevatedButton(
                        text: "lbl_get_started".tr,
                        margin: EdgeInsets.only(
                          left: 18.h,
                          right: 17.h,
                        ),
                        buttonStyle: CustomButtonStyles.fillGray,
                        buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
                      ),
                      SizedBox(height: 99.v)
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
