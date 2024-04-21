part of 'page_de_garde_bloc.dart';

/// Represents the state of PageDeGarde in the application.

// ignore_for_file: must_be_immutable
class PageDeGardeState extends Equatable {
  PageDeGardeState({this.pageDeGardeModelObj});

  PageDeGardeModel? pageDeGardeModelObj;

  @override
  List<Object?> get props => [pageDeGardeModelObj];
  PageDeGardeState copyWith({PageDeGardeModel? pageDeGardeModelObj}) {
    return PageDeGardeState(
      pageDeGardeModelObj: pageDeGardeModelObj ?? this.pageDeGardeModelObj,
    );
  }
}
