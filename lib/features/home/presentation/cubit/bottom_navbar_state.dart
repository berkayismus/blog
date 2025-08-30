// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bottom_navbar_cubit.dart';

final class BottomNavbarState extends Equatable {
  const BottomNavbarState({
    required this.currentIndex,
  });

  final int currentIndex;

  factory BottomNavbarState.initial() {
    return const BottomNavbarState(
      currentIndex: 0,
    );
  }

  @override
  List<Object> get props => [
        currentIndex,
      ];

  BottomNavbarState copyWith({
    int? currentIndex,
  }) {
    return BottomNavbarState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
