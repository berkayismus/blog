import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'personal_info_summary_state.dart';

class PersonalInfoSummaryCubit extends Cubit<PersonalInfoSummaryState> {
  PersonalInfoSummaryCubit() : super(PersonalInfoSummaryInitial());
}
