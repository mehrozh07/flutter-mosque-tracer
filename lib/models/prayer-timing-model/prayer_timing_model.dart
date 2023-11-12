import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_timing_model.freezed.dart';
part 'prayer_timing_model.g.dart';

@freezed
class PrayerTimingModel with _$PrayerTimingModel {
  factory PrayerTimingModel({
    int? code,
    String? status,
    PrayerTimings? data,
    PrayerDate? date,
    PrayerMeta? meta,
  }) = _PrayerTimingModel;

  factory PrayerTimingModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimingModelFromJson(json);
}

@freezed
class PrayerTimings with _$PrayerTimings {
  factory PrayerTimings({
    String? fajr,
    String? sunrise,
    String? dhuhr,
    String? asr,
    String? sunset,
    String? maghrib,
    String? isha,
    String? imsak,
    String? midnight,
    String? firstthird,
    String? lastthird,
  }) = _PrayerTimings;

  factory PrayerTimings.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimingsFromJson(json);
}

@freezed
class PrayerDate with _$PrayerDate {
  factory PrayerDate({
    String? readable,
    String? timestamp,
    HijriDate? hijri,
    GregorianDate? gregorian,
  }) = _PrayerDate;

  factory PrayerDate.fromJson(Map<String, dynamic> json) =>
      _$PrayerDateFromJson(json);
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

  factory HijriDate.fromJson(Map<String, dynamic> json) =>
      _$HijriDateFromJson(json);
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

  factory GregorianDate.fromJson(Map<String, dynamic> json) =>
      _$GregorianDateFromJson(json);
}

@freezed
class PrayerMeta with _$PrayerMeta {
  factory PrayerMeta({
    double? latitude,
    double? longitude,
    String? timezone,
    PrayerMethod? method,
    String? latitudeAdjustmentMethod,
    String? midnightMode,
    String? school,
    PrayerOffset? offset,
  }) = _PrayerMeta;

  factory PrayerMeta.fromJson(Map<String, dynamic> json) =>
      _$PrayerMetaFromJson(json);
}

@freezed
class PrayerMethod with _$PrayerMethod {
  factory PrayerMethod({
    int? id,
    String? name,
    PrayerMethodParams? params,
    PrayerMethodLocation? location,
  }) = _PrayerMethod;

  factory PrayerMethod.fromJson(Map<String, dynamic> json) =>
      _$PrayerMethodFromJson(json);
}

@freezed
class PrayerMethodParams with _$PrayerMethodParams {
  factory PrayerMethodParams({
    int? fajr,
    int? isha,
  }) = _PrayerMethodParams;

  factory PrayerMethodParams.fromJson(Map<String, dynamic> json) =>
      _$PrayerMethodParamsFromJson(json);
}

@freezed
class PrayerMethodMetaLocation with _$PrayerMethodMetaLocation {
  factory PrayerMethodMetaLocation({
    double? latitude,
    double? longitude,
  }) = _PrayerMethodMetaLocation;

  factory PrayerMethodMetaLocation.fromJson(Map<String, dynamic> json) =>
      _$PrayerMethodMetaLocationFromJson(json);
}

@freezed
class PrayerOffset with _$PrayerOffset {
  factory PrayerOffset({
    int? imsak,
    int? fajr,
    int? sunrise,
    int? dhuhr,
    int? asr,
    int? maghrib,
    int? sunset,
    int? isha,
    int? midnight,
  }) = _PrayerOffset;

  factory PrayerOffset.fromJson(Map<String, dynamic> json) =>
      _$PrayerOffsetFromJson(json);
}

@freezed
class PrayerMethodLocation with _$PrayerMethodLocation {
  factory PrayerMethodLocation({
    double? latitude,
    double? longitude,
  }) = _PrayerMethodLocation;

  factory PrayerMethodLocation.fromJson(Map<String, dynamic> json) =>
      _$PrayerMethodLocationFromJson(json);
}

@freezed
class HijriWeekday with _$HijriWeekday {
  factory HijriWeekday({
    String? en,
    String? ar,
  }) = _HijriWeekday;

  factory HijriWeekday.fromJson(Map<String, dynamic> json) =>
      _$HijriWeekdayFromJson(json);
}

@freezed
class HijriMonth with _$HijriMonth {
  factory HijriMonth({
    int? number,
    String? en,
    String? ar,
  }) = _HijriMonth;

  factory HijriMonth.fromJson(Map<String, dynamic> json) =>
      _$HijriMonthFromJson(json);
}

@freezed
class HijriDesignation with _$HijriDesignation {
  factory HijriDesignation({
    String? abbreviated,
    String? expanded,
  }) = _HijriDesignation;

  factory HijriDesignation.fromJson(Map<String, dynamic> json) =>
      _$HijriDesignationFromJson(json);
}

@freezed
class GregorianWeekday with _$GregorianWeekday {
  factory GregorianWeekday({
    String? en,
  }) = _GregorianWeekday;

  factory GregorianWeekday.fromJson(Map<String, dynamic> json) =>
      _$GregorianWeekdayFromJson(json);
}

@freezed
class GregorianMonth with _$GregorianMonth {
  factory GregorianMonth({
    int? number,
    String? en,
  }) = _GregorianMonth;

  factory GregorianMonth.fromJson(Map<String, dynamic> json) =>
      _$GregorianMonthFromJson(json);
}

@freezed
class GregorianDesignation with _$GregorianDesignation {
  factory GregorianDesignation({
    String? abbreviated,
    String? expanded,
  }) = _GregorianDesignation;

  factory GregorianDesignation.fromJson(Map<String, dynamic> json) =>
      _$GregorianDesignationFromJson(json);
}
