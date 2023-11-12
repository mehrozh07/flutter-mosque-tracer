import 'package:freezed_annotation/freezed_annotation.dart';
part 'prayer_timing_model.freezed.dart';
part 'prayer_timing_model.g.dart';

@freezed
class PrayerTimingModel with _$PrayerTimingModel {
  factory PrayerTimingModel({
    Timings? timings,
    Date? date,
    Meta? meta,
  }) = _PrayerTimingModel;

  factory PrayerTimingModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimingModelFromJson(json);
}

@freezed
class Timings with _$Timings {
  factory Timings({
   @JsonKey(name: 'Fajr')  String? fajr,
    String? sunrise,
    @JsonKey(name: 'Dhuhr') String? dhuhr,
    @JsonKey(name: 'Asr') String? asr,
    String? sunset,
    @JsonKey(name: 'Maghrib') String? maghrib,
    @JsonKey(name: 'Isha') String? isha,
    String? imsak,
    String? midnight,
    @JsonKey(name: 'Firstthird') String? firstThird,
    @JsonKey(name: 'Lastthird') String? lastThird,
  }) = _Timings;

  factory Timings.fromJson(Map<String, dynamic> json) => _$TimingsFromJson(json);
}

@freezed
class Date with _$Date {
  factory Date({
    String? readable,
    String? timestamp,
    HijriDate? hijri,
    GregorianDate? gregorian,
  }) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
}

@freezed
class HijriDate with _$HijriDate {
  factory HijriDate({
    String? date,
    String? format,
    String? day,
    HijriWeekday? weekday,
    HijriMonth? month,
    String? year,
    HijriDesignation? designation,
    List<String>? holidays,
  }) = _HijriDate;

  factory HijriDate.fromJson(Map<String, dynamic> json) => _$HijriDateFromJson(json);
}

@freezed
class GregorianDate with _$GregorianDate {
  factory GregorianDate({
    String? date,
    String? format,
    String? day,
    GregorianWeekday? weekday,
    GregorianMonth? month,
    String? year,
    GregorianDesignation? designation,
  }) = _GregorianDate;

  factory GregorianDate.fromJson(Map<String, dynamic> json) => _$GregorianDateFromJson(json);
}

@freezed
class Meta with _$Meta {
  factory Meta({
    double? latitude,
    double? longitude,
    String? timezone,
    Method? method,
    String? latitudeAdjustmentMethod,
    String? midnightMode,
    String? school,
    Offset? offset,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Method with _$Method {
  factory Method({
    int? id,
    String? name,
    Params? params,
    Location? location,
  }) = _Method;

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);
}

@freezed
class Params with _$Params {
  factory Params({
    int? fajr,
    int? isha,
  }) = _Params;

  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);
}

@freezed
class Location with _$Location {
  factory Location({
    double? latitude,
    double? longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
class Offset with _$Offset {
  factory Offset({
    int? imsak,
    int? fajr,
    int? sunrise,
    int? dhuhr,
    int? asr,
    int? maghrib,
    int? sunset,
    int? isha,
    int? midnight,
  }) = _Offset;

  factory Offset.fromJson(Map<String, dynamic> json) => _$OffsetFromJson(json);
}

@freezed
class HijriWeekday with _$HijriWeekday {
  factory HijriWeekday({
    String? en,
    String? ar,
  }) = _HijriWeekday;

  factory HijriWeekday.fromJson(Map<String, dynamic> json) => _$HijriWeekdayFromJson(json);
}

@freezed
class HijriMonth with _$HijriMonth {
  factory HijriMonth({
    int? number,
    String? en,
    String? ar,
  }) = _HijriMonth;

  factory HijriMonth.fromJson(Map<String, dynamic> json) => _$HijriMonthFromJson(json);
}

@freezed
class HijriDesignation with _$HijriDesignation {
  factory HijriDesignation({
    String? abbreviated,
    String? expanded,
  }) = _HijriDesignation;

  factory HijriDesignation.fromJson(Map<String, dynamic> json) => _$HijriDesignationFromJson(json);
}

@freezed
class GregorianWeekday with _$GregorianWeekday {
  factory GregorianWeekday({
    String? en,
  }) = _GregorianWeekday;

  factory GregorianWeekday.fromJson(Map<String, dynamic> json) => _$GregorianWeekdayFromJson(json);
}

@freezed
class GregorianMonth with _$GregorianMonth {
  factory GregorianMonth({
    int? number,
    String? en,
  }) = _GregorianMonth;

  factory GregorianMonth.fromJson(Map<String, dynamic> json) => _$GregorianMonthFromJson(json);
}

@freezed
class GregorianDesignation with _$GregorianDesignation {
  factory GregorianDesignation({
    String? abbreviated,
    String? expanded,
  }) = _GregorianDesignation;

  factory GregorianDesignation.fromJson(Map<String, dynamic> json) => _$GregorianDesignationFromJson(json);
}
