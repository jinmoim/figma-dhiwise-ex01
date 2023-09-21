import 'package:figma_dhiwise_ex01/presentation/dashboard_screen/product.graphql.dart';

import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'package:figma_dhiwise_ex01/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => DashboardBloc(DashboardState())
        ..add(VideoPlayerInit(url: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')),
      child: DashboardScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final videoPlayerController = context.select((DashboardBloc bloc) => bloc.state.videoPlayerController);

    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 292.v,
                            width: double.maxFinite,
                            // margin: EdgeInsets.only(bottom: 730.v),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                            ),
                            child: videoPlayerController != null
                                ? VideoPlayer(videoPlayerController)
                                : Container(),
                          ),
                          Query$GetAllProducts$Widget(
                            builder: (result, {refetch, fetchMore}) {
                              if (result.isLoading || result.hasException) {
                                return Text("Loading...");
                              }
                              return Text(result.data?.toString() ?? "Something went wrong!");
                            }
                          )
                        ]
                      )
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (videoPlayerController != null) {
                  videoPlayerController.value.isPlaying
                      ? context.read<DashboardBloc>().add(VideoPlayerStop())
                      : context.read<DashboardBloc>().add(VideoPlayerPlay());
                }
              },
              child: Icon(Icons.stop),
            ),
          ),
        );
      },
    );
  }
}
