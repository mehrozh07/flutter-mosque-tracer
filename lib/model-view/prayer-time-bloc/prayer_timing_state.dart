part of 'prayer_timing_bloc.dart';

abstract class PrayerTimingState extends Equatable {}

class PrayerTimingInitial extends PrayerTimingState {
  @override
  List<Object> get props => [];
}

class PrayerTimingLoading extends PrayerTimingState {
  @override
  List<Object> get props => [];
}

class PrayerTimingLoaded extends PrayerTimingState {
  final PrayerTimingModel prayerTimingModel;
  PrayerTimingLoaded(this.prayerTimingModel);

  @override
  List<Object> get props => [prayerTimingModel];
}

class PrayerTimingError extends PrayerTimingState {
  final String error;
  PrayerTimingError(this.error);

  @override
  List<Object> get props => [error];
}
