import 'package:flutter_bloc/flutter_bloc.dart';


class StringCubit extends Cubit<List<String>> {
  StringCubit() : super([]);

  void setText(List<String> text) => emit(text);

  void addText(String text) =>
      emit([text].followedBy(state).toList());
}