part of 'prayer_timing_bloc.dart';

abstract class PrayerTimingEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PrayerTimingDone extends PrayerTimingEvent{
  final String city, country;
  PrayerTimingDone(this.country,this.city);
}