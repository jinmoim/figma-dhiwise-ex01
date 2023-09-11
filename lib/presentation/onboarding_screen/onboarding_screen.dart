import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:figma_dhiwise_ex01/core/app_export.dart';
import 'package:figma_dhiwise_ex01/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(
            OnboardingState(onboardingModelObj: OnboardingModel()))
          ..add(OnboardingInitialEvent()),
        child: OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 43.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_title".tr,
                                style: theme.textTheme.bodySmall)),
                        Container(
                            margin: EdgeInsets.only(top: 8.v, right: 1.h),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Column(children: [
                              Container(
                                  width: 358.h,
                                  decoration: AppDecoration.fillOnPrimary,
                                  child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 11.v),
                                      decoration: AppDecoration
                                          .outlineOnPrimaryContainer,
                                      child: Text("lbl_label".tr,
                                          style: theme.textTheme.bodyLarge))),
                              Container(
                                  width: 358.h,
                                  decoration: AppDecoration.fillOnPrimary,
                                  child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 11.v),
                                      decoration: AppDecoration
                                          .outlineOnPrimaryContainer,
                                      child: Text("lbl_label".tr,
                                          style: theme.textTheme.bodyLarge))),
                              Container(
                                  width: 358.h,
                                  decoration: AppDecoration.fillOnPrimary,
                                  child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 11.v),
                                      decoration: AppDecoration
                                          .outlineOnPrimaryContainer,
                                      child: Text("lbl_label".tr,
                                          style: theme.textTheme.bodyLarge)))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 8.v, bottom: 5.v),
                            child: Text("msg_text_description".tr,
                                style: theme.textTheme.bodySmall))
                      ])),
              bottomNavigationBar: CustomElevatedButton(
                  width: 204.h,
                  text: "msg_ok_let_s_get_started".tr,
                  margin:
                      EdgeInsets.only(left: 94.h, right: 95.h, bottom: 23.v),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 10.h),
                      child: CustomImageView(svgPath: ImageConstant.imgSend)),
                  onTap: () {
                    onTapOkletsget(context);
                  })));
    });
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardScreen.
  onTapOkletsget(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
