// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_timing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayerTimingModelImpl _$$PrayerTimingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrayerTimingModelImpl(
      timings: json['timings'] == null
          ? null
          : Timings.fromJson(json['timings'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : Date.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerTimingModelImplToJson(
        _$PrayerTimingModelImpl instance) =>
    <String, dynamic>{
      'timings': instance.timings,
      'date': instance.date,
      'meta': instance.meta,
    };

_$TimingsImpl _$$TimingsImplFromJson(Map<String, dynamic> json) =>
    _$TimingsImpl(
      fajr: json['Fajr'] as String?,
      sunrise: json['sunrise'] as String?,
      dhuhr: json['Dhuhr'] as String?,
      asr: json['Asr'] as String?,
      sunset: json['sunset'] as String?,
      maghrib: json['Maghrib'] as String?,
      isha: json['Isha'] as String?,
      imsak: json['imsak'] as String?,
      midnight: json['midnight'] as String?,
      firstThird: json['Firstthird'] as String?,
      lastThird: json['Lastthird'] as String?,
    );

Map<String, dynamic> _$$TimingsImplToJson(_$TimingsImpl instance) =>
    <String, dynamic>{
      'Fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'Dhuhr': instance.dhuhr,
      'Asr': instance.asr,
      'sunset': instance.sunset,
      'Maghrib': instance.maghrib,
      'Isha': instance.isha,
      'imsak': instance.imsak,
      'midnight': instance.midnight,
      'Firstthird': instance.firstThird,
      'Lastthird': instance.lastThird,
    };

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) => _$DateImpl(
      readable: json['readable'] as String?,
      timestamp: json['timestamp'] as String?,
      hijri: json['hijri'] == null
          ? null
          : HijriDate.fromJson(json['hijri'] as Map<String, dynamic>),
      gregorian: json['gregorian'] == null
          ? null
          : GregorianDate.fromJson(json['gregorian'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DateImplToJson(_$DateImpl instance) =>
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

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      method: json['method'] == null
          ? null
          : Method.fromJson(json['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String?,
      midnightMode: json['midnightMode'] as String?,
      school: json['school'] as String?,
      offset: json['offset'] == null
          ? null
          : Offset.fromJson(json['offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
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

_$MethodImpl _$$MethodImplFromJson(Map<String, dynamic> json) => _$MethodImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      params: json['params'] == null
          ? null
          : Params.fromJson(json['params'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MethodImplToJson(_$MethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };

_$ParamsImpl _$$ParamsImplFromJson(Map<String, dynamic> json) => _$ParamsImpl(
      fajr: json['fajr'] as int?,
      isha: json['isha'] as int?,
    );

Map<String, dynamic> _$$ParamsImplToJson(_$ParamsImpl instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'isha': instance.isha,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$OffsetImpl _$$OffsetImplFromJson(Map<String, dynamic> json) => _$OffsetImpl(
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

Map<String, dynamic> _$$OffsetImplToJson(_$OffsetImpl instance) =>
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
