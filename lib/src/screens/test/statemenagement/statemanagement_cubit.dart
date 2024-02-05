import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tcap_myt/src/screens/test/statemenagement/statemanagement_state.dart';

class StatemanagementCubit extends Cubit<StatemanagementState> {
  StatemanagementCubit() : super(StatemanagementInitial());

  void onSendLoading() {
    emit(StatemanagementLoading());
  }

  void onSendError() {
    emit(StatemanagementFailure());
  }

  void onSendSuccess() {
    emit(StatemanagementSuccess());
  }
}
