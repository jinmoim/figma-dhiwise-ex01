part of 'dashboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Dashboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.

@immutable
sealed class DashboardEvent extends Equatable {
  const DashboardEvent();
}

final class VideoPlayerInit extends DashboardEvent {
  const VideoPlayerInit({required this.url});

  final String? url;

  @override
  List<Object?> get props => [];
}

final class VideoPlayerPlay extends DashboardEvent {
  const VideoPlayerPlay();

  @override
  List<Object?> get props => [];
}

final class VideoPlayerStop extends DashboardEvent {
  const VideoPlayerStop();

  @override
  List<Object?> get props => [];
}