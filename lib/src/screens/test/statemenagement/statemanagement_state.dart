abstract class StatemanagementState {
  const StatemanagementState() : super();
}

class StatemanagementInitial extends StatemanagementState {
  @override
  String toString() => 'StatemanagementInitial';
}

class StatemanagementLoading extends StatemanagementState {
  @override
  String toString() => 'StatemanagementLoading';
}

class StatemanagementSuccess extends StatemanagementState {
  @override
  String toString() => 'StatemanagementSuccess';
}

class StatemanagementFailure extends StatemanagementState {
  @override
  String toString() => 'StatemanagementFailure';
}

class StatemanagementSuccessUpdateData extends StatemanagementState {
  final String message;

  StatemanagementSuccessUpdateData(this.message);
}
