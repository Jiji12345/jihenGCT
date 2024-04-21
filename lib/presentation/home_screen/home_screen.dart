import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStackGroupeChim(context),
                  SizedBox(height: 14.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 3.h,
                          bottom: 5.v,
                        ),
                        decoration: AppDecoration.fillGray200,
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPeTroleChimique,
                              height: 197.v,
                              width: 312.h,
                            ),
                            SizedBox(height: 25.v),
                            Container(
                              width: 318.adaptSize,
                              margin: EdgeInsets.only(
                                left: 15.h,
                                right: 23.h,
                              ),
                              child: Text(
                                "msg_la_tunisie_est_le".tr,
                                maxLines: 21,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.16,
                                ),
                              ),
                            ),
                            SizedBox(height: 44.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle25,
                              height: 30.v,
                              width: 357.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStackGroupeChim(BuildContext context) {
    return SizedBox(
      height: 149.v,
      width: 309.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1128x93,
            height: 128.v,
            width: 93.h,
            alignment: Alignment.topLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse258x183,
            height: 58.v,
            width: 183.h,
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "msg_groupe_chimique".tr,
              style: CustomTextStyles.titleMediumPrimary,
            ),
          ),
          CustomAppBar(
            leadingWidth: 359.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 298.h,
              ),
              onTap: () {
                onTapVectorone(context);
              },
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapVectorone(BuildContext context) {
    NavigatorService.goBack();
  }
}
