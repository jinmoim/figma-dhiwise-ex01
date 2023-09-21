part of 'dashboard_bloc.dart';

/// Represents the state of Dashboard in the application.
final class DashboardState extends Equatable {
  const DashboardState({
    this.url,
    this.videoPlayerController,
  });

  final String? url;
  final VideoPlayerController? videoPlayerController;

  DashboardState.playing({this.url, required this.videoPlayerController});
  DashboardState.paused({this.url, required this.videoPlayerController});

  @override
  List<Object?> get props => [];
}