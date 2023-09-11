import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'package:figma_dhiwise_ex01/core/app_export.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 1042.v,
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: GestureDetector(
                          onTap: () {
                            callTestApi(context);
                          },
                          child: SizedBox(
                              height: 1042.v, width: double.maxFinite))))));
    });
  }

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/list API and triggers a [CreateListEvent] event on the [DashboardBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  callTestApi(BuildContext context) {
    context.read<DashboardBloc>().add(
          CreateListEvent(),
        );
  }
}
