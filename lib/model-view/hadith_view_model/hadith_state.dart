part of 'hadith_bloc.dart';

abstract class HadithState extends Equatable {}

class HadithInitial extends HadithState {
  @override
  List<Object> get props => [];
}

class HadithLoading extends HadithState {
  @override
  List<Object> get props => [];
}

class HadithLoaded extends HadithState {
  final HadithModel hadithModel;
  HadithLoaded(this.hadithModel);

  @override
  List<Object> get props => [hadithModel];
}

class HadithError extends HadithState {
  final String error;
  HadithError(this.error);

  @override
  List<Object> get props => [error];
}
