part of 'fournisseurs_bloc.dart';

/// Represents the state of Fournisseurs in the application.

// ignore_for_file: must_be_immutable
class FournisseursState extends Equatable {
  FournisseursState(
      {this.profilevalueController,
      this.chatvalueoneController,
      this.fournisseursModelObj});

  TextEditingController? profilevalueController;

  TextEditingController? chatvalueoneController;

  FournisseursModel? fournisseursModelObj;

  @override
  List<Object?> get props =>
      [profilevalueController, chatvalueoneController, fournisseursModelObj];
  FournisseursState copyWith({
    TextEditingController? profilevalueController,
    TextEditingController? chatvalueoneController,
    FournisseursModel? fournisseursModelObj,
  }) {
    return FournisseursState(
      profilevalueController:
          profilevalueController ?? this.profilevalueController,
      chatvalueoneController:
          chatvalueoneController ?? this.chatvalueoneController,
      fournisseursModelObj: fournisseursModelObj ?? this.fournisseursModelObj,
    );
  }
}
