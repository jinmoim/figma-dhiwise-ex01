import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '/core/app_export.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<VideoPlayerInit>(_onInitialize);
    on<VideoPlayerPlay>(_onPlay);
    on<VideoPlayerStop>(_onStop);
  }

  late final String url;
  late final VideoPlayerController videoPlayerController;

  _onInitialize(
      VideoPlayerInit event,
      Emitter<DashboardState> emit,
      ) async {
    debugPrint('DashboardBloc._onInitialize()');
    // TODO: url parsing의 결과로 state를 분기해야 하지만, 생략함
    url = event.url!;
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(event.url!))
      ..initialize()
      ..play();
    emit(DashboardState.playing(url: url, videoPlayerController: videoPlayerController));
  }

  _onPlay(
      VideoPlayerPlay event,
      Emitter<DashboardState> emit,
      ) async {
    debugPrint('DashboardBloc._onPlay()');
    videoPlayerController.play();
    emit(DashboardState.playing(url: url, videoPlayerController: videoPlayerController));
  }

  _onStop(
      VideoPlayerStop event,
      Emitter<DashboardState> emit,
      ) async {
    debugPrint('DashboardBloc._onStop()');
    videoPlayerController.pause();
    emit(DashboardState.paused(url: url, videoPlayerController: videoPlayerController));
  }
}
