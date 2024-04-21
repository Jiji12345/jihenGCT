part of 'employeurs_bloc.dart';

/// Represents the state of Employeurs in the application.

// ignore_for_file: must_be_immutable
class EmployeursState extends Equatable {
  EmployeursState(
      {this.profilevalueController,
      this.chatvalueoneController,
      this.employeursModelObj});

  TextEditingController? profilevalueController;

  TextEditingController? chatvalueoneController;

  EmployeursModel? employeursModelObj;

  @override
  List<Object?> get props =>
      [profilevalueController, chatvalueoneController, employeursModelObj];
  EmployeursState copyWith({
    TextEditingController? profilevalueController,
    TextEditingController? chatvalueoneController,
    EmployeursModel? employeursModelObj,
  }) {
    return EmployeursState(
      profilevalueController:
          profilevalueController ?? this.profilevalueController,
      chatvalueoneController:
          chatvalueoneController ?? this.chatvalueoneController,
      employeursModelObj: employeursModelObj ?? this.employeursModelObj,
    );
  }
}
