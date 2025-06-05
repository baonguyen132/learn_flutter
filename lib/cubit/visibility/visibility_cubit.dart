import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/cubit/visibility/visibility_state.dart';

class VisibilityCubit extends Cubit<VisibilityState>{
  VisibilityCubit():super(const VisibilityState(show: true));

  void show() => emit(const VisibilityState(show: true));
  void hide() => emit(const VisibilityState(show: false)) ;
}