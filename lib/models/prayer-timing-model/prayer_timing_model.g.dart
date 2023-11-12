// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_timing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayerTimingModelImpl _$$PrayerTimingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrayerTimingModelImpl(
      code: json['code'] as int?,
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : PrayerTimings.fromJson(json['data'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : PrayerDate.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : PrayerMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerTimingModelImplToJson(
        _$PrayerTimingModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
      'date': instance.date,
      'meta': instance.meta,
    };

_$PrayerTimingsImpl _$$PrayerTimingsImplFromJson(Map<String, dynamic> json) =>
    _$PrayerTimingsImpl(
      fajr: json['fajr'] as String?,
      sunrise: json['sunrise'] as String?,
      dhuhr: json['dhuhr'] as String?,
      asr: json['asr'] as String?,
      sunset: json['sunset'] as String?,
      maghrib: json['maghrib'] as String?,
      isha: json['isha'] as String?,
      imsak: json['imsak'] as String?,
      midnight: json['midnight'] as String?,
      firstthird: json['firstthird'] as String?,
      lastthird: json['lastthird'] as String?,
    );

Map<String, dynamic> _$$PrayerTimingsImplToJson(_$PrayerTimingsImpl instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'sunset': instance.sunset,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
      'imsak': instance.imsak,
      'midnight': instance.midnight,
      'firstthird': instance.firstthird,
      'lastthird': instance.lastthird,
    };

_$PrayerDateImpl _$$PrayerDateImplFromJson(Map<String, dynamic> json) =>
    _$PrayerDateImpl(
      readable: json['readable'] as String?,
      timestamp: json['timestamp'] as String?,
      hijri: json['hijri'] == null
          ? null
          : HijriDate.fromJson(json['hijri'] as Map<String, dynamic>),
      gregorian: json['gregorian'] == null
          ? null
          : GregorianDate.fromJson(json['gregorian'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerDateImplToJson(_$PrayerDateImpl instance) =>
    <String, dynamic>{
      'readable': instance.readable,
      'timestamp': instance.timestamp,
      'hijri': instance.hijri,
      'gregorian': instance.gregorian,
    };

_$HijriDateImpl _$$HijriDateImplFromJson(Map<String, dynamic> json) =>
    _$HijriDateImpl(
      date: json['date'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      weekday: json['weekday'] == null
          ? null
          : HijriWeekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : HijriMonth.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String?,
      designation: json['designation'] == null
          ? null
          : HijriDesignation.fromJson(
              json['designation'] as Map<String, dynamic>),
      holidays: (json['holidays'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HijriDateImplToJson(_$HijriDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
      'holidays': instance.holidays,
    };

_$GregorianDateImpl _$$GregorianDateImplFromJson(Map<String, dynamic> json) =>
    _$GregorianDateImpl(
      date: json['date'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      weekday: json['weekday'] == null
          ? null
          : GregorianWeekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : GregorianMonth.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String?,
      designation: json['designation'] == null
          ? null
          : GregorianDesignation.fromJson(
              json['designation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GregorianDateImplToJson(_$GregorianDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
    };

_$PrayerMetaImpl _$$PrayerMetaImplFromJson(Map<String, dynamic> json) =>
    _$PrayerMetaImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      method: json['method'] == null
          ? null
          : PrayerMethod.fromJson(json['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String?,
      midnightMode: json['midnightMode'] as String?,
      school: json['school'] as String?,
      offset: json['offset'] == null
          ? null
          : PrayerOffset.fromJson(json['offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerMetaImplToJson(_$PrayerMetaImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'method': instance.method,
      'latitudeAdjustmentMethod': instance.latitudeAdjustmentMethod,
      'midnightMode': instance.midnightMode,
      'school': instance.school,
      'offset': instance.offset,
    };

_$PrayerMethodImpl _$$PrayerMethodImplFromJson(Map<String, dynamic> json) =>
    _$PrayerMethodImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      params: json['params'] == null
          ? null
          : PrayerMethodParams.fromJson(json['params'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : PrayerMethodLocation.fromJson(
              json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerMethodImplToJson(_$PrayerMethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };

_$PrayerMethodParamsImpl _$$PrayerMethodParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PrayerMethodParamsImpl(
      fajr: json['fajr'] as int?,
      isha: json['isha'] as int?,
    );

Map<String, dynamic> _$$PrayerMethodParamsImplToJson(
        _$PrayerMethodParamsImpl instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'isha': instance.isha,
    };

_$PrayerMethodMetaLocationImpl _$$PrayerMethodMetaLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$PrayerMethodMetaLocationImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PrayerMethodMetaLocationImplToJson(
        _$PrayerMethodMetaLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$PrayerOffsetImpl _$$PrayerOffsetImplFromJson(Map<String, dynamic> json) =>
    _$PrayerOffsetImpl(
      imsak: json['imsak'] as int?,
      fajr: json['fajr'] as int?,
      sunrise: json['sunrise'] as int?,
      dhuhr: json['dhuhr'] as int?,
      asr: json['asr'] as int?,
      maghrib: json['maghrib'] as int?,
      sunset: json['sunset'] as int?,
      isha: json['isha'] as int?,
      midnight: json['midnight'] as int?,
    );

Map<String, dynamic> _$$PrayerOffsetImplToJson(_$PrayerOffsetImpl instance) =>
    <String, dynamic>{
      'imsak': instance.imsak,
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'maghrib': instance.maghrib,
      'sunset': instance.sunset,
      'isha': instance.isha,
      'midnight': instance.midnight,
    };

_$PrayerMethodLocationImpl _$$PrayerMethodLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$PrayerMethodLocationImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PrayerMethodLocationImplToJson(
        _$PrayerMethodLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$HijriWeekdayImpl _$$HijriWeekdayImplFromJson(Map<String, dynamic> json) =>
    _$HijriWeekdayImpl(
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$HijriWeekdayImplToJson(_$HijriWeekdayImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };

_$HijriMonthImpl _$$HijriMonthImplFromJson(Map<String, dynamic> json) =>
    _$HijriMonthImpl(
      number: json['number'] as int?,
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$HijriMonthImplToJson(_$HijriMonthImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
    };

_$HijriDesignationImpl _$$HijriDesignationImplFromJson(
        Map<String, dynamic> json) =>
    _$HijriDesignationImpl(
      abbreviated: json['abbreviated'] as String?,
      expanded: json['expanded'] as String?,
    );

Map<String, dynamic> _$$HijriDesignationImplToJson(
        _$HijriDesignationImpl instance) =>
    <String, dynamic>{
      'abbreviated': instance.abbreviated,
      'expanded': instance.expanded,
    };

_$GregorianWeekdayImpl _$$GregorianWeekdayImplFromJson(
        Map<String, dynamic> json) =>
    _$GregorianWeekdayImpl(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$GregorianWeekdayImplToJson(
        _$GregorianWeekdayImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

_$GregorianMonthImpl _$$GregorianMonthImplFromJson(Map<String, dynamic> json) =>
    _$GregorianMonthImpl(
      number: json['number'] as int?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$GregorianMonthImplToJson(
        _$GregorianMonthImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
    };

_$GregorianDesignationImpl _$$GregorianDesignationImplFromJson(
        Map<String, dynamic> json) =>
    _$GregorianDesignationImpl(
      abbreviated: json['abbreviated'] as String?,
      expanded: json['expanded'] as String?,
    );

Map<String, dynamic> _$$GregorianDesignationImplToJson(
        _$GregorianDesignationImpl instance) =>
    <String, dynamic>{
      'abbreviated': instance.abbreviated,
      'expanded': instance.expanded,
    };
