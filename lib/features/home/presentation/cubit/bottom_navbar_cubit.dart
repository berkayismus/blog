import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navbar_state.dart';

class BottomNavbarCubit extends Cubit<BottomNavbarState> {
  BottomNavbarCubit() : super(BottomNavbarState.initial());

  void onTap(int selectedIndex) {
    emit(state.copyWith(currentIndex: selectedIndex));
  }
}
