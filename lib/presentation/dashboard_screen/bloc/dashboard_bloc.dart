import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:figma_dhiwise_ex01/presentation/dashboard_screen/models/dashboard_model.dart';
import 'package:figma_dhiwise_ex01/data/models/listUser/post_list_user_resp.dart';
import 'package:figma_dhiwise_ex01/data/models/listUser/post_list_user_req.dart';
import 'dart:async';
import 'package:figma_dhiwise_ex01/data/repository/repository.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
    on<CreateListEvent>(_callListUser);
  }

  final _repository = Repository();

  var postListUserResp = PostListUserResp();

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {}

  /// Calls [https://nodedemo.dhiwise.co/device/api/v1/user/list] with the provided event and emits the state.
  ///
  /// The [CreateListEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callListUser(
    CreateListEvent event,
    Emitter<DashboardState> emit,
  ) async {
    var postListUserReq = PostListUserReq();
    await _repository.listUser(
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM',
      },
      requestData: postListUserReq.toJson(),
    ).then((value) async {
      postListUserResp = value;
      _onListUserSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onListUserError();
    });
  }

  void _onListUserSuccess(
    PostListUserResp resp,
    Emitter<DashboardState> emit,
  ) {}
  void _onListUserError() {
    //implement error method body...
  }
}
