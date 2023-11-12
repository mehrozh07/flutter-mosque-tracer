// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_timing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrayerTimingModel _$PrayerTimingModelFromJson(Map<String, dynamic> json) {
  return _PrayerTimingModel.fromJson(json);
}

/// @nodoc
mixin _$PrayerTimingModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  PrayerTimings? get data => throw _privateConstructorUsedError;
  PrayerDate? get date => throw _privateConstructorUsedError;
  PrayerMeta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerTimingModelCopyWith<PrayerTimingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerTimingModelCopyWith<$Res> {
  factory $PrayerTimingModelCopyWith(
          PrayerTimingModel value, $Res Function(PrayerTimingModel) then) =
      _$PrayerTimingModelCopyWithImpl<$Res, PrayerTimingModel>;
  @useResult
  $Res call(
      {int? code,
      String? status,
      PrayerTimings? data,
      PrayerDate? date,
      PrayerMeta? meta});

  $PrayerTimingsCopyWith<$Res>? get data;
  $PrayerDateCopyWith<$Res>? get date;
  $PrayerMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PrayerTimingModelCopyWithImpl<$Res, $Val extends PrayerTimingModel>
    implements $PrayerTimingModelCopyWith<$Res> {
  _$PrayerTimingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrayerTimings?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PrayerDate?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PrayerMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerTimingsCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PrayerTimingsCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerDateCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $PrayerDateCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $PrayerMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerTimingModelImplCopyWith<$Res>
    implements $PrayerTimingModelCopyWith<$Res> {
  factory _$$PrayerTimingModelImplCopyWith(_$PrayerTimingModelImpl value,
          $Res Function(_$PrayerTimingModelImpl) then) =
      __$$PrayerTimingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? status,
      PrayerTimings? data,
      PrayerDate? date,
      PrayerMeta? meta});

  @override
  $PrayerTimingsCopyWith<$Res>? get data;
  @override
  $PrayerDateCopyWith<$Res>? get date;
  @override
  $PrayerMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$PrayerTimingModelImplCopyWithImpl<$Res>
    extends _$PrayerTimingModelCopyWithImpl<$Res, _$PrayerTimingModelImpl>
    implements _$$PrayerTimingModelImplCopyWith<$Res> {
  __$$PrayerTimingModelImplCopyWithImpl(_$PrayerTimingModelImpl _value,
      $Res Function(_$PrayerTimingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$PrayerTimingModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrayerTimings?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PrayerDate?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PrayerMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerTimingModelImpl implements _PrayerTimingModel {
  _$PrayerTimingModelImpl(
      {this.code, this.status, this.data, this.date, this.meta});

  factory _$PrayerTimingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerTimingModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final PrayerTimings? data;
  @override
  final PrayerDate? date;
  @override
  final PrayerMeta? meta;

  @override
  String toString() {
    return 'PrayerTimingModel(code: $code, status: $status, data: $data, date: $date, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerTimingModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data, date, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerTimingModelImplCopyWith<_$PrayerTimingModelImpl> get copyWith =>
      __$$PrayerTimingModelImplCopyWithImpl<_$PrayerTimingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerTimingModelImplToJson(
      this,
    );
  }
}

abstract class _PrayerTimingModel implements PrayerTimingModel {
  factory _PrayerTimingModel(
      {final int? code,
      final String? status,
      final PrayerTimings? data,
      final PrayerDate? date,
      final PrayerMeta? meta}) = _$PrayerTimingModelImpl;

  factory _PrayerTimingModel.fromJson(Map<String, dynamic> json) =
      _$PrayerTimingModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get status;
  @override
  PrayerTimings? get data;
  @override
  PrayerDate? get date;
  @override
  PrayerMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$PrayerTimingModelImplCopyWith<_$PrayerTimingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerTimings _$PrayerTimingsFromJson(Map<String, dynamic> json) {
  return _PrayerTimings.fromJson(json);
}

/// @nodoc
mixin _$PrayerTimings {
  String? get fajr => throw _privateConstructorUsedError;
  String? get sunrise => throw _privateConstructorUsedError;
  String? get dhuhr => throw _privateConstructorUsedError;
  String? get asr => throw _privateConstructorUsedError;
  String? get sunset => throw _privateConstructorUsedError;
  String? get maghrib => throw _privateConstructorUsedError;
  String? get isha => throw _privateConstructorUsedError;
  String? get imsak => throw _privateConstructorUsedError;
  String? get midnight => throw _privateConstructorUsedError;
  String? get firstthird => throw _privateConstructorUsedError;
  String? get lastthird => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerTimingsCopyWith<PrayerTimings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerTimingsCopyWith<$Res> {
  factory $PrayerTimingsCopyWith(
          PrayerTimings value, $Res Function(PrayerTimings) then) =
      _$PrayerTimingsCopyWithImpl<$Res, PrayerTimings>;
  @useResult
  $Res call(
      {String? fajr,
      String? sunrise,
      String? dhuhr,
      String? asr,
      String? sunset,
      String? maghrib,
      String? isha,
      String? imsak,
      String? midnight,
      String? firstthird,
      String? lastthird});
}

/// @nodoc
class _$PrayerTimingsCopyWithImpl<$Res, $Val extends PrayerTimings>
    implements $PrayerTimingsCopyWith<$Res> {
  _$PrayerTimingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? sunset = freezed,
    Object? maghrib = freezed,
    Object? isha = freezed,
    Object? imsak = freezed,
    Object? midnight = freezed,
    Object? firstthird = freezed,
    Object? lastthird = freezed,
  }) {
    return _then(_value.copyWith(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      dhuhr: freezed == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String?,
      asr: freezed == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      maghrib: freezed == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String?,
      imsak: freezed == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as String?,
      midnight: freezed == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as String?,
      firstthird: freezed == firstthird
          ? _value.firstthird
          : firstthird // ignore: cast_nullable_to_non_nullable
              as String?,
      lastthird: freezed == lastthird
          ? _value.lastthird
          : lastthird // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerTimingsImplCopyWith<$Res>
    implements $PrayerTimingsCopyWith<$Res> {
  factory _$$PrayerTimingsImplCopyWith(
          _$PrayerTimingsImpl value, $Res Function(_$PrayerTimingsImpl) then) =
      __$$PrayerTimingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fajr,
      String? sunrise,
      String? dhuhr,
      String? asr,
      String? sunset,
      String? maghrib,
      String? isha,
      String? imsak,
      String? midnight,
      String? firstthird,
      String? lastthird});
}

/// @nodoc
class __$$PrayerTimingsImplCopyWithImpl<$Res>
    extends _$PrayerTimingsCopyWithImpl<$Res, _$PrayerTimingsImpl>
    implements _$$PrayerTimingsImplCopyWith<$Res> {
  __$$PrayerTimingsImplCopyWithImpl(
      _$PrayerTimingsImpl _value, $Res Function(_$PrayerTimingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? sunset = freezed,
    Object? maghrib = freezed,
    Object? isha = freezed,
    Object? imsak = freezed,
    Object? midnight = freezed,
    Object? firstthird = freezed,
    Object? lastthird = freezed,
  }) {
    return _then(_$PrayerTimingsImpl(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      dhuhr: freezed == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String?,
      asr: freezed == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      maghrib: freezed == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String?,
      imsak: freezed == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as String?,
      midnight: freezed == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as String?,
      firstthird: freezed == firstthird
          ? _value.firstthird
          : firstthird // ignore: cast_nullable_to_non_nullable
              as String?,
      lastthird: freezed == lastthird
          ? _value.lastthird
          : lastthird // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerTimingsImpl implements _PrayerTimings {
  _$PrayerTimingsImpl(
      {this.fajr,
      this.sunrise,
      this.dhuhr,
      this.asr,
      this.sunset,
      this.maghrib,
      this.isha,
      this.imsak,
      this.midnight,
      this.firstthird,
      this.lastthird});

  factory _$PrayerTimingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerTimingsImplFromJson(json);

  @override
  final String? fajr;
  @override
  final String? sunrise;
  @override
  final String? dhuhr;
  @override
  final String? asr;
  @override
  final String? sunset;
  @override
  final String? maghrib;
  @override
  final String? isha;
  @override
  final String? imsak;
  @override
  final String? midnight;
  @override
  final String? firstthird;
  @override
  final String? lastthird;

  @override
  String toString() {
    return 'PrayerTimings(fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, sunset: $sunset, maghrib: $maghrib, isha: $isha, imsak: $imsak, midnight: $midnight, firstthird: $firstthird, lastthird: $lastthird)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerTimingsImpl &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr) &&
            (identical(other.asr, asr) || other.asr == asr) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.isha, isha) || other.isha == isha) &&
            (identical(other.imsak, imsak) || other.imsak == imsak) &&
            (identical(other.midnight, midnight) ||
                other.midnight == midnight) &&
            (identical(other.firstthird, firstthird) ||
                other.firstthird == firstthird) &&
            (identical(other.lastthird, lastthird) ||
                other.lastthird == lastthird));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fajr, sunrise, dhuhr, asr,
      sunset, maghrib, isha, imsak, midnight, firstthird, lastthird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerTimingsImplCopyWith<_$PrayerTimingsImpl> get copyWith =>
      __$$PrayerTimingsImplCopyWithImpl<_$PrayerTimingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerTimingsImplToJson(
      this,
    );
  }
}

abstract class _PrayerTimings implements PrayerTimings {
  factory _PrayerTimings(
      {final String? fajr,
      final String? sunrise,
      final String? dhuhr,
      final String? asr,
      final String? sunset,
      final String? maghrib,
      final String? isha,
      final String? imsak,
      final String? midnight,
      final String? firstthird,
      final String? lastthird}) = _$PrayerTimingsImpl;

  factory _PrayerTimings.fromJson(Map<String, dynamic> json) =
      _$PrayerTimingsImpl.fromJson;

  @override
  String? get fajr;
  @override
  String? get sunrise;
  @override
  String? get dhuhr;
  @override
  String? get asr;
  @override
  String? get sunset;
  @override
  String? get maghrib;
  @override
  String? get isha;
  @override
  String? get imsak;
  @override
  String? get midnight;
  @override
  String? get firstthird;
  @override
  String? get lastthird;
  @override
  @JsonKey(ignore: true)
  _$$PrayerTimingsImplCopyWith<_$PrayerTimingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerDate _$PrayerDateFromJson(Map<String, dynamic> json) {
  return _PrayerDate.fromJson(json);
}

/// @nodoc
mixin _$PrayerDate {
  String? get readable => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  HijriDate? get hijri => throw _privateConstructorUsedError;
  GregorianDate? get gregorian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerDateCopyWith<PrayerDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerDateCopyWith<$Res> {
  factory $PrayerDateCopyWith(
          PrayerDate value, $Res Function(PrayerDate) then) =
      _$PrayerDateCopyWithImpl<$Res, PrayerDate>;
  @useResult
  $Res call(
      {String? readable,
      String? timestamp,
      HijriDate? hijri,
      GregorianDate? gregorian});

  $HijriDateCopyWith<$Res>? get hijri;
  $GregorianDateCopyWith<$Res>? get gregorian;
}

/// @nodoc
class _$PrayerDateCopyWithImpl<$Res, $Val extends PrayerDate>
    implements $PrayerDateCopyWith<$Res> {
  _$PrayerDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
    Object? hijri = freezed,
    Object? gregorian = freezed,
  }) {
    return _then(_value.copyWith(
      readable: freezed == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      hijri: freezed == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as HijriDate?,
      gregorian: freezed == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as GregorianDate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriDateCopyWith<$Res>? get hijri {
    if (_value.hijri == null) {
      return null;
    }

    return $HijriDateCopyWith<$Res>(_value.hijri!, (value) {
      return _then(_value.copyWith(hijri: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianDateCopyWith<$Res>? get gregorian {
    if (_value.gregorian == null) {
      return null;
    }

    return $GregorianDateCopyWith<$Res>(_value.gregorian!, (value) {
      return _then(_value.copyWith(gregorian: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerDateImplCopyWith<$Res>
    implements $PrayerDateCopyWith<$Res> {
  factory _$$PrayerDateImplCopyWith(
          _$PrayerDateImpl value, $Res Function(_$PrayerDateImpl) then) =
      __$$PrayerDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? readable,
      String? timestamp,
      HijriDate? hijri,
      GregorianDate? gregorian});

  @override
  $HijriDateCopyWith<$Res>? get hijri;
  @override
  $GregorianDateCopyWith<$Res>? get gregorian;
}

/// @nodoc
class __$$PrayerDateImplCopyWithImpl<$Res>
    extends _$PrayerDateCopyWithImpl<$Res, _$PrayerDateImpl>
    implements _$$PrayerDateImplCopyWith<$Res> {
  __$$PrayerDateImplCopyWithImpl(
      _$PrayerDateImpl _value, $Res Function(_$PrayerDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
    Object? hijri = freezed,
    Object? gregorian = freezed,
  }) {
    return _then(_$PrayerDateImpl(
      readable: freezed == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      hijri: freezed == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as HijriDate?,
      gregorian: freezed == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as GregorianDate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerDateImpl implements _PrayerDate {
  _$PrayerDateImpl({this.readable, this.timestamp, this.hijri, this.gregorian});

  factory _$PrayerDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerDateImplFromJson(json);

  @override
  final String? readable;
  @override
  final String? timestamp;
  @override
  final HijriDate? hijri;
  @override
  final GregorianDate? gregorian;

  @override
  String toString() {
    return 'PrayerDate(readable: $readable, timestamp: $timestamp, hijri: $hijri, gregorian: $gregorian)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerDateImpl &&
            (identical(other.readable, readable) ||
                other.readable == readable) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.hijri, hijri) || other.hijri == hijri) &&
            (identical(other.gregorian, gregorian) ||
                other.gregorian == gregorian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, readable, timestamp, hijri, gregorian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerDateImplCopyWith<_$PrayerDateImpl> get copyWith =>
      __$$PrayerDateImplCopyWithImpl<_$PrayerDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerDateImplToJson(
      this,
    );
  }
}

abstract class _PrayerDate implements PrayerDate {
  factory _PrayerDate(
      {final String? readable,
      final String? timestamp,
      final HijriDate? hijri,
      final GregorianDate? gregorian}) = _$PrayerDateImpl;

  factory _PrayerDate.fromJson(Map<String, dynamic> json) =
      _$PrayerDateImpl.fromJson;

  @override
  String? get readable;
  @override
  String? get timestamp;
  @override
  HijriDate? get hijri;
  @override
  GregorianDate? get gregorian;
  @override
  @JsonKey(ignore: true)
  _$$PrayerDateImplCopyWith<_$PrayerDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HijriDate _$HijriDateFromJson(Map<String, dynamic> json) {
  return _HijriDate.fromJson(json);
}

/// @nodoc
mixin _$HijriDate {
  String? get date => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  HijriWeekday? get weekday => throw _privateConstructorUsedError;
  HijriMonth? get month => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  HijriDesignation? get designation => throw _privateConstructorUsedError;
  List<String>? get holidays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriDateCopyWith<HijriDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriDateCopyWith<$Res> {
  factory $HijriDateCopyWith(HijriDate value, $Res Function(HijriDate) then) =
      _$HijriDateCopyWithImpl<$Res, HijriDate>;
  @useResult
  $Res call(
      {String? date,
      String? format,
      String? day,
      HijriWeekday? weekday,
      HijriMonth? month,
      String? year,
      HijriDesignation? designation,
      List<String>? holidays});

  $HijriWeekdayCopyWith<$Res>? get weekday;
  $HijriMonthCopyWith<$Res>? get month;
  $HijriDesignationCopyWith<$Res>? get designation;
}

/// @nodoc
class _$HijriDateCopyWithImpl<$Res, $Val extends HijriDate>
    implements $HijriDateCopyWith<$Res> {
  _$HijriDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
    Object? holidays = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as HijriWeekday?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as HijriMonth?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as HijriDesignation?,
      holidays: freezed == holidays
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriWeekdayCopyWith<$Res>? get weekday {
    if (_value.weekday == null) {
      return null;
    }

    return $HijriWeekdayCopyWith<$Res>(_value.weekday!, (value) {
      return _then(_value.copyWith(weekday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriMonthCopyWith<$Res>? get month {
    if (_value.month == null) {
      return null;
    }

    return $HijriMonthCopyWith<$Res>(_value.month!, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriDesignationCopyWith<$Res>? get designation {
    if (_value.designation == null) {
      return null;
    }

    return $HijriDesignationCopyWith<$Res>(_value.designation!, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HijriDateImplCopyWith<$Res>
    implements $HijriDateCopyWith<$Res> {
  factory _$$HijriDateImplCopyWith(
          _$HijriDateImpl value, $Res Function(_$HijriDateImpl) then) =
      __$$HijriDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      String? format,
      String? day,
      HijriWeekday? weekday,
      HijriMonth? month,
      String? year,
      HijriDesignation? designation,
      List<String>? holidays});

  @override
  $HijriWeekdayCopyWith<$Res>? get weekday;
  @override
  $HijriMonthCopyWith<$Res>? get month;
  @override
  $HijriDesignationCopyWith<$Res>? get designation;
}

/// @nodoc
class __$$HijriDateImplCopyWithImpl<$Res>
    extends _$HijriDateCopyWithImpl<$Res, _$HijriDateImpl>
    implements _$$HijriDateImplCopyWith<$Res> {
  __$$HijriDateImplCopyWithImpl(
      _$HijriDateImpl _value, $Res Function(_$HijriDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
    Object? holidays = freezed,
  }) {
    return _then(_$HijriDateImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as HijriWeekday?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as HijriMonth?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as HijriDesignation?,
      holidays: freezed == holidays
          ? _value._holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HijriDateImpl implements _HijriDate {
  _$HijriDateImpl(
      {this.date,
      this.format,
      this.day,
      this.weekday,
      this.month,
      this.year,
      this.designation,
      final List<String>? holidays})
      : _holidays = holidays;

  factory _$HijriDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HijriDateImplFromJson(json);

  @override
  final String? date;
  @override
  final String? format;
  @override
  final String? day;
  @override
  final HijriWeekday? weekday;
  @override
  final HijriMonth? month;
  @override
  final String? year;
  @override
  final HijriDesignation? designation;
  final List<String>? _holidays;
  @override
  List<String>? get holidays {
    final value = _holidays;
    if (value == null) return null;
    if (_holidays is EqualUnmodifiableListView) return _holidays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HijriDate(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation, holidays: $holidays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HijriDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            const DeepCollectionEquality().equals(other._holidays, _holidays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, format, day, weekday,
      month, year, designation, const DeepCollectionEquality().hash(_holidays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HijriDateImplCopyWith<_$HijriDateImpl> get copyWith =>
      __$$HijriDateImplCopyWithImpl<_$HijriDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HijriDateImplToJson(
      this,
    );
  }
}

abstract class _HijriDate implements HijriDate {
  factory _HijriDate(
      {final String? date,
      final String? format,
      final String? day,
      final HijriWeekday? weekday,
      final HijriMonth? month,
      final String? year,
      final HijriDesignation? designation,
      final List<String>? holidays}) = _$HijriDateImpl;

  factory _HijriDate.fromJson(Map<String, dynamic> json) =
      _$HijriDateImpl.fromJson;

  @override
  String? get date;
  @override
  String? get format;
  @override
  String? get day;
  @override
  HijriWeekday? get weekday;
  @override
  HijriMonth? get month;
  @override
  String? get year;
  @override
  HijriDesignation? get designation;
  @override
  List<String>? get holidays;
  @override
  @JsonKey(ignore: true)
  _$$HijriDateImplCopyWith<_$HijriDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GregorianDate _$GregorianDateFromJson(Map<String, dynamic> json) {
  return _GregorianDate.fromJson(json);
}

/// @nodoc
mixin _$GregorianDate {
  String? get date => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  GregorianWeekday? get weekday => throw _privateConstructorUsedError;
  GregorianMonth? get month => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  GregorianDesignation? get designation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianDateCopyWith<GregorianDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianDateCopyWith<$Res> {
  factory $GregorianDateCopyWith(
          GregorianDate value, $Res Function(GregorianDate) then) =
      _$GregorianDateCopyWithImpl<$Res, GregorianDate>;
  @useResult
  $Res call(
      {String? date,
      String? format,
      String? day,
      GregorianWeekday? weekday,
      GregorianMonth? month,
      String? year,
      GregorianDesignation? designation});

  $GregorianWeekdayCopyWith<$Res>? get weekday;
  $GregorianMonthCopyWith<$Res>? get month;
  $GregorianDesignationCopyWith<$Res>? get designation;
}

/// @nodoc
class _$GregorianDateCopyWithImpl<$Res, $Val extends GregorianDate>
    implements $GregorianDateCopyWith<$Res> {
  _$GregorianDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as GregorianWeekday?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as GregorianMonth?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as GregorianDesignation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianWeekdayCopyWith<$Res>? get weekday {
    if (_value.weekday == null) {
      return null;
    }

    return $GregorianWeekdayCopyWith<$Res>(_value.weekday!, (value) {
      return _then(_value.copyWith(weekday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianMonthCopyWith<$Res>? get month {
    if (_value.month == null) {
      return null;
    }

    return $GregorianMonthCopyWith<$Res>(_value.month!, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianDesignationCopyWith<$Res>? get designation {
    if (_value.designation == null) {
      return null;
    }

    return $GregorianDesignationCopyWith<$Res>(_value.designation!, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GregorianDateImplCopyWith<$Res>
    implements $GregorianDateCopyWith<$Res> {
  factory _$$GregorianDateImplCopyWith(
          _$GregorianDateImpl value, $Res Function(_$GregorianDateImpl) then) =
      __$$GregorianDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      String? format,
      String? day,
      GregorianWeekday? weekday,
      GregorianMonth? month,
      String? year,
      GregorianDesignation? designation});

  @override
  $GregorianWeekdayCopyWith<$Res>? get weekday;
  @override
  $GregorianMonthCopyWith<$Res>? get month;
  @override
  $GregorianDesignationCopyWith<$Res>? get designation;
}

/// @nodoc
class __$$GregorianDateImplCopyWithImpl<$Res>
    extends _$GregorianDateCopyWithImpl<$Res, _$GregorianDateImpl>
    implements _$$GregorianDateImplCopyWith<$Res> {
  __$$GregorianDateImplCopyWithImpl(
      _$GregorianDateImpl _value, $Res Function(_$GregorianDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
  }) {
    return _then(_$GregorianDateImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as GregorianWeekday?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as GregorianMonth?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as GregorianDesignation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GregorianDateImpl implements _GregorianDate {
  _$GregorianDateImpl(
      {this.date,
      this.format,
      this.day,
      this.weekday,
      this.month,
      this.year,
      this.designation});

  factory _$GregorianDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GregorianDateImplFromJson(json);

  @override
  final String? date;
  @override
  final String? format;
  @override
  final String? day;
  @override
  final GregorianWeekday? weekday;
  @override
  final GregorianMonth? month;
  @override
  final String? year;
  @override
  final GregorianDesignation? designation;

  @override
  String toString() {
    return 'GregorianDate(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GregorianDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, format, day, weekday, month, year, designation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GregorianDateImplCopyWith<_$GregorianDateImpl> get copyWith =>
      __$$GregorianDateImplCopyWithImpl<_$GregorianDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GregorianDateImplToJson(
      this,
    );
  }
}

abstract class _GregorianDate implements GregorianDate {
  factory _GregorianDate(
      {final String? date,
      final String? format,
      final String? day,
      final GregorianWeekday? weekday,
      final GregorianMonth? month,
      final String? year,
      final GregorianDesignation? designation}) = _$GregorianDateImpl;

  factory _GregorianDate.fromJson(Map<String, dynamic> json) =
      _$GregorianDateImpl.fromJson;

  @override
  String? get date;
  @override
  String? get format;
  @override
  String? get day;
  @override
  GregorianWeekday? get weekday;
  @override
  GregorianMonth? get month;
  @override
  String? get year;
  @override
  GregorianDesignation? get designation;
  @override
  @JsonKey(ignore: true)
  _$$GregorianDateImplCopyWith<_$GregorianDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerMeta _$PrayerMetaFromJson(Map<String, dynamic> json) {
  return _PrayerMeta.fromJson(json);
}

/// @nodoc
mixin _$PrayerMeta {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  PrayerMethod? get method => throw _privateConstructorUsedError;
  String? get latitudeAdjustmentMethod => throw _privateConstructorUsedError;
  String? get midnightMode => throw _privateConstructorUsedError;
  String? get school => throw _privateConstructorUsedError;
  PrayerOffset? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerMetaCopyWith<PrayerMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerMetaCopyWith<$Res> {
  factory $PrayerMetaCopyWith(
          PrayerMeta value, $Res Function(PrayerMeta) then) =
      _$PrayerMetaCopyWithImpl<$Res, PrayerMeta>;
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      String? timezone,
      PrayerMethod? method,
      String? latitudeAdjustmentMethod,
      String? midnightMode,
      String? school,
      PrayerOffset? offset});

  $PrayerMethodCopyWith<$Res>? get method;
  $PrayerOffsetCopyWith<$Res>? get offset;
}

/// @nodoc
class _$PrayerMetaCopyWithImpl<$Res, $Val extends PrayerMeta>
    implements $PrayerMetaCopyWith<$Res> {
  _$PrayerMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? method = freezed,
    Object? latitudeAdjustmentMethod = freezed,
    Object? midnightMode = freezed,
    Object? school = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PrayerMethod?,
      latitudeAdjustmentMethod: freezed == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      midnightMode: freezed == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as PrayerOffset?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerMethodCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $PrayerMethodCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerOffsetCopyWith<$Res>? get offset {
    if (_value.offset == null) {
      return null;
    }

    return $PrayerOffsetCopyWith<$Res>(_value.offset!, (value) {
      return _then(_value.copyWith(offset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerMetaImplCopyWith<$Res>
    implements $PrayerMetaCopyWith<$Res> {
  factory _$$PrayerMetaImplCopyWith(
          _$PrayerMetaImpl value, $Res Function(_$PrayerMetaImpl) then) =
      __$$PrayerMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      String? timezone,
      PrayerMethod? method,
      String? latitudeAdjustmentMethod,
      String? midnightMode,
      String? school,
      PrayerOffset? offset});

  @override
  $PrayerMethodCopyWith<$Res>? get method;
  @override
  $PrayerOffsetCopyWith<$Res>? get offset;
}

/// @nodoc
class __$$PrayerMetaImplCopyWithImpl<$Res>
    extends _$PrayerMetaCopyWithImpl<$Res, _$PrayerMetaImpl>
    implements _$$PrayerMetaImplCopyWith<$Res> {
  __$$PrayerMetaImplCopyWithImpl(
      _$PrayerMetaImpl _value, $Res Function(_$PrayerMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? method = freezed,
    Object? latitudeAdjustmentMethod = freezed,
    Object? midnightMode = freezed,
    Object? school = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$PrayerMetaImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PrayerMethod?,
      latitudeAdjustmentMethod: freezed == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      midnightMode: freezed == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as PrayerOffset?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerMetaImpl implements _PrayerMeta {
  _$PrayerMetaImpl(
      {this.latitude,
      this.longitude,
      this.timezone,
      this.method,
      this.latitudeAdjustmentMethod,
      this.midnightMode,
      this.school,
      this.offset});

  factory _$PrayerMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerMetaImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? timezone;
  @override
  final PrayerMethod? method;
  @override
  final String? latitudeAdjustmentMethod;
  @override
  final String? midnightMode;
  @override
  final String? school;
  @override
  final PrayerOffset? offset;

  @override
  String toString() {
    return 'PrayerMeta(latitude: $latitude, longitude: $longitude, timezone: $timezone, method: $method, latitudeAdjustmentMethod: $latitudeAdjustmentMethod, midnightMode: $midnightMode, school: $school, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerMetaImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(
                    other.latitudeAdjustmentMethod, latitudeAdjustmentMethod) ||
                other.latitudeAdjustmentMethod == latitudeAdjustmentMethod) &&
            (identical(other.midnightMode, midnightMode) ||
                other.midnightMode == midnightMode) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, timezone,
      method, latitudeAdjustmentMethod, midnightMode, school, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerMetaImplCopyWith<_$PrayerMetaImpl> get copyWith =>
      __$$PrayerMetaImplCopyWithImpl<_$PrayerMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerMetaImplToJson(
      this,
    );
  }
}

abstract class _PrayerMeta implements PrayerMeta {
  factory _PrayerMeta(
      {final double? latitude,
      final double? longitude,
      final String? timezone,
      final PrayerMethod? method,
      final String? latitudeAdjustmentMethod,
      final String? midnightMode,
      final String? school,
      final PrayerOffset? offset}) = _$PrayerMetaImpl;

  factory _PrayerMeta.fromJson(Map<String, dynamic> json) =
      _$PrayerMetaImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get timezone;
  @override
  PrayerMethod? get method;
  @override
  String? get latitudeAdjustmentMethod;
  @override
  String? get midnightMode;
  @override
  String? get school;
  @override
  PrayerOffset? get offset;
  @override
  @JsonKey(ignore: true)
  _$$PrayerMetaImplCopyWith<_$PrayerMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerMethod _$PrayerMethodFromJson(Map<String, dynamic> json) {
  return _PrayerMethod.fromJson(json);
}

/// @nodoc
mixin _$PrayerMethod {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  PrayerMethodParams? get params => throw _privateConstructorUsedError;
  PrayerMethodLocation? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerMethodCopyWith<PrayerMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerMethodCopyWith<$Res> {
  factory $PrayerMethodCopyWith(
          PrayerMethod value, $Res Function(PrayerMethod) then) =
      _$PrayerMethodCopyWithImpl<$Res, PrayerMethod>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      PrayerMethodParams? params,
      PrayerMethodLocation? location});

  $PrayerMethodParamsCopyWith<$Res>? get params;
  $PrayerMethodLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$PrayerMethodCopyWithImpl<$Res, $Val extends PrayerMethod>
    implements $PrayerMethodCopyWith<$Res> {
  _$PrayerMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? params = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PrayerMethodParams?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PrayerMethodLocation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerMethodParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $PrayerMethodParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerMethodLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $PrayerMethodLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerMethodImplCopyWith<$Res>
    implements $PrayerMethodCopyWith<$Res> {
  factory _$$PrayerMethodImplCopyWith(
          _$PrayerMethodImpl value, $Res Function(_$PrayerMethodImpl) then) =
      __$$PrayerMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      PrayerMethodParams? params,
      PrayerMethodLocation? location});

  @override
  $PrayerMethodParamsCopyWith<$Res>? get params;
  @override
  $PrayerMethodLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$PrayerMethodImplCopyWithImpl<$Res>
    extends _$PrayerMethodCopyWithImpl<$Res, _$PrayerMethodImpl>
    implements _$$PrayerMethodImplCopyWith<$Res> {
  __$$PrayerMethodImplCopyWithImpl(
      _$PrayerMethodImpl _value, $Res Function(_$PrayerMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? params = freezed,
    Object? location = freezed,
  }) {
    return _then(_$PrayerMethodImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PrayerMethodParams?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PrayerMethodLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerMethodImpl implements _PrayerMethod {
  _$PrayerMethodImpl({this.id, this.name, this.params, this.location});

  factory _$PrayerMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerMethodImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final PrayerMethodParams? params;
  @override
  final PrayerMethodLocation? location;

  @override
  String toString() {
    return 'PrayerMethod(id: $id, name: $name, params: $params, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, params, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerMethodImplCopyWith<_$PrayerMethodImpl> get copyWith =>
      __$$PrayerMethodImplCopyWithImpl<_$PrayerMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerMethodImplToJson(
      this,
    );
  }
}

abstract class _PrayerMethod implements PrayerMethod {
  factory _PrayerMethod(
      {final int? id,
      final String? name,
      final PrayerMethodParams? params,
      final PrayerMethodLocation? location}) = _$PrayerMethodImpl;

  factory _PrayerMethod.fromJson(Map<String, dynamic> json) =
      _$PrayerMethodImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  PrayerMethodParams? get params;
  @override
  PrayerMethodLocation? get location;
  @override
  @JsonKey(ignore: true)
  _$$PrayerMethodImplCopyWith<_$PrayerMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerMethodParams _$PrayerMethodParamsFromJson(Map<String, dynamic> json) {
  return _PrayerMethodParams.fromJson(json);
}

/// @nodoc
mixin _$PrayerMethodParams {
  int? get fajr => throw _privateConstructorUsedError;
  int? get isha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerMethodParamsCopyWith<PrayerMethodParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerMethodParamsCopyWith<$Res> {
  factory $PrayerMethodParamsCopyWith(
          PrayerMethodParams value, $Res Function(PrayerMethodParams) then) =
      _$PrayerMethodParamsCopyWithImpl<$Res, PrayerMethodParams>;
  @useResult
  $Res call({int? fajr, int? isha});
}

/// @nodoc
class _$PrayerMethodParamsCopyWithImpl<$Res, $Val extends PrayerMethodParams>
    implements $PrayerMethodParamsCopyWith<$Res> {
  _$PrayerMethodParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? isha = freezed,
  }) {
    return _then(_value.copyWith(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as int?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerMethodParamsImplCopyWith<$Res>
    implements $PrayerMethodParamsCopyWith<$Res> {
  factory _$$PrayerMethodParamsImplCopyWith(_$PrayerMethodParamsImpl value,
          $Res Function(_$PrayerMethodParamsImpl) then) =
      __$$PrayerMethodParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? fajr, int? isha});
}

/// @nodoc
class __$$PrayerMethodParamsImplCopyWithImpl<$Res>
    extends _$PrayerMethodParamsCopyWithImpl<$Res, _$PrayerMethodParamsImpl>
    implements _$$PrayerMethodParamsImplCopyWith<$Res> {
  __$$PrayerMethodParamsImplCopyWithImpl(_$PrayerMethodParamsImpl _value,
      $Res Function(_$PrayerMethodParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? isha = freezed,
  }) {
    return _then(_$PrayerMethodParamsImpl(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as int?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerMethodParamsImpl implements _PrayerMethodParams {
  _$PrayerMethodParamsImpl({this.fajr, this.isha});

  factory _$PrayerMethodParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerMethodParamsImplFromJson(json);

  @override
  final int? fajr;
  @override
  final int? isha;

  @override
  String toString() {
    return 'PrayerMethodParams(fajr: $fajr, isha: $isha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerMethodParamsImpl &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.isha, isha) || other.isha == isha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fajr, isha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerMethodParamsImplCopyWith<_$PrayerMethodParamsImpl> get copyWith =>
      __$$PrayerMethodParamsImplCopyWithImpl<_$PrayerMethodParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerMethodParamsImplToJson(
      this,
    );
  }
}

abstract class _PrayerMethodParams implements PrayerMethodParams {
  factory _PrayerMethodParams({final int? fajr, final int? isha}) =
      _$PrayerMethodParamsImpl;

  factory _PrayerMethodParams.fromJson(Map<String, dynamic> json) =
      _$PrayerMethodParamsImpl.fromJson;

  @override
  int? get fajr;
  @override
  int? get isha;
  @override
  @JsonKey(ignore: true)
  _$$PrayerMethodParamsImplCopyWith<_$PrayerMethodParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerMethodMetaLocation _$PrayerMethodMetaLocationFromJson(
    Map<String, dynamic> json) {
  return _PrayerMethodMetaLocation.fromJson(json);
}

/// @nodoc
mixin _$PrayerMethodMetaLocation {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerMethodMetaLocationCopyWith<PrayerMethodMetaLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerMethodMetaLocationCopyWith<$Res> {
  factory $PrayerMethodMetaLocationCopyWith(PrayerMethodMetaLocation value,
          $Res Function(PrayerMethodMetaLocation) then) =
      _$PrayerMethodMetaLocationCopyWithImpl<$Res, PrayerMethodMetaLocation>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$PrayerMethodMetaLocationCopyWithImpl<$Res,
        $Val extends PrayerMethodMetaLocation>
    implements $PrayerMethodMetaLocationCopyWith<$Res> {
  _$PrayerMethodMetaLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerMethodMetaLocationImplCopyWith<$Res>
    implements $PrayerMethodMetaLocationCopyWith<$Res> {
  factory _$$PrayerMethodMetaLocationImplCopyWith(
          _$PrayerMethodMetaLocationImpl value,
          $Res Function(_$PrayerMethodMetaLocationImpl) then) =
      __$$PrayerMethodMetaLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$PrayerMethodMetaLocationImplCopyWithImpl<$Res>
    extends _$PrayerMethodMetaLocationCopyWithImpl<$Res,
        _$PrayerMethodMetaLocationImpl>
    implements _$$PrayerMethodMetaLocationImplCopyWith<$Res> {
  __$$PrayerMethodMetaLocationImplCopyWithImpl(
      _$PrayerMethodMetaLocationImpl _value,
      $Res Function(_$PrayerMethodMetaLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$PrayerMethodMetaLocationImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerMethodMetaLocationImpl implements _PrayerMethodMetaLocation {
  _$PrayerMethodMetaLocationImpl({this.latitude, this.longitude});

  factory _$PrayerMethodMetaLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerMethodMetaLocationImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'PrayerMethodMetaLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerMethodMetaLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerMethodMetaLocationImplCopyWith<_$PrayerMethodMetaLocationImpl>
      get copyWith => __$$PrayerMethodMetaLocationImplCopyWithImpl<
          _$PrayerMethodMetaLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerMethodMetaLocationImplToJson(
      this,
    );
  }
}

abstract class _PrayerMethodMetaLocation implements PrayerMethodMetaLocation {
  factory _PrayerMethodMetaLocation(
      {final double? latitude,
      final double? longitude}) = _$PrayerMethodMetaLocationImpl;

  factory _PrayerMethodMetaLocation.fromJson(Map<String, dynamic> json) =
      _$PrayerMethodMetaLocationImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$PrayerMethodMetaLocationImplCopyWith<_$PrayerMethodMetaLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PrayerOffset _$PrayerOffsetFromJson(Map<String, dynamic> json) {
  return _PrayerOffset.fromJson(json);
}

/// @nodoc
mixin _$PrayerOffset {
  int? get imsak => throw _privateConstructorUsedError;
  int? get fajr => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get dhuhr => throw _privateConstructorUsedError;
  int? get asr => throw _privateConstructorUsedError;
  int? get maghrib => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  int? get isha => throw _privateConstructorUsedError;
  int? get midnight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerOffsetCopyWith<PrayerOffset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerOffsetCopyWith<$Res> {
  factory $PrayerOffsetCopyWith(
          PrayerOffset value, $Res Function(PrayerOffset) then) =
      _$PrayerOffsetCopyWithImpl<$Res, PrayerOffset>;
  @useResult
  $Res call(
      {int? imsak,
      int? fajr,
      int? sunrise,
      int? dhuhr,
      int? asr,
      int? maghrib,
      int? sunset,
      int? isha,
      int? midnight});
}

/// @nodoc
class _$PrayerOffsetCopyWithImpl<$Res, $Val extends PrayerOffset>
    implements $PrayerOffsetCopyWith<$Res> {
  _$PrayerOffsetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imsak = freezed,
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? maghrib = freezed,
    Object? sunset = freezed,
    Object? isha = freezed,
    Object? midnight = freezed,
  }) {
    return _then(_value.copyWith(
      imsak: freezed == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as int?,
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      dhuhr: freezed == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as int?,
      asr: freezed == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as int?,
      maghrib: freezed == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as int?,
      midnight: freezed == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerOffsetImplCopyWith<$Res>
    implements $PrayerOffsetCopyWith<$Res> {
  factory _$$PrayerOffsetImplCopyWith(
          _$PrayerOffsetImpl value, $Res Function(_$PrayerOffsetImpl) then) =
      __$$PrayerOffsetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? imsak,
      int? fajr,
      int? sunrise,
      int? dhuhr,
      int? asr,
      int? maghrib,
      int? sunset,
      int? isha,
      int? midnight});
}

/// @nodoc
class __$$PrayerOffsetImplCopyWithImpl<$Res>
    extends _$PrayerOffsetCopyWithImpl<$Res, _$PrayerOffsetImpl>
    implements _$$PrayerOffsetImplCopyWith<$Res> {
  __$$PrayerOffsetImplCopyWithImpl(
      _$PrayerOffsetImpl _value, $Res Function(_$PrayerOffsetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imsak = freezed,
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? maghrib = freezed,
    Object? sunset = freezed,
    Object? isha = freezed,
    Object? midnight = freezed,
  }) {
    return _then(_$PrayerOffsetImpl(
      imsak: freezed == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as int?,
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      dhuhr: freezed == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as int?,
      asr: freezed == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as int?,
      maghrib: freezed == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as int?,
      midnight: freezed == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerOffsetImpl implements _PrayerOffset {
  _$PrayerOffsetImpl(
      {this.imsak,
      this.fajr,
      this.sunrise,
      this.dhuhr,
      this.asr,
      this.maghrib,
      this.sunset,
      this.isha,
      this.midnight});

  factory _$PrayerOffsetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerOffsetImplFromJson(json);

  @override
  final int? imsak;
  @override
  final int? fajr;
  @override
  final int? sunrise;
  @override
  final int? dhuhr;
  @override
  final int? asr;
  @override
  final int? maghrib;
  @override
  final int? sunset;
  @override
  final int? isha;
  @override
  final int? midnight;

  @override
  String toString() {
    return 'PrayerOffset(imsak: $imsak, fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, sunset: $sunset, isha: $isha, midnight: $midnight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerOffsetImpl &&
            (identical(other.imsak, imsak) || other.imsak == imsak) &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr) &&
            (identical(other.asr, asr) || other.asr == asr) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.isha, isha) || other.isha == isha) &&
            (identical(other.midnight, midnight) ||
                other.midnight == midnight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imsak, fajr, sunrise, dhuhr, asr,
      maghrib, sunset, isha, midnight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerOffsetImplCopyWith<_$PrayerOffsetImpl> get copyWith =>
      __$$PrayerOffsetImplCopyWithImpl<_$PrayerOffsetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerOffsetImplToJson(
      this,
    );
  }
}

abstract class _PrayerOffset implements PrayerOffset {
  factory _PrayerOffset(
      {final int? imsak,
      final int? fajr,
      final int? sunrise,
      final int? dhuhr,
      final int? asr,
      final int? maghrib,
      final int? sunset,
      final int? isha,
      final int? midnight}) = _$PrayerOffsetImpl;

  factory _PrayerOffset.fromJson(Map<String, dynamic> json) =
      _$PrayerOffsetImpl.fromJson;

  @override
  int? get imsak;
  @override
  int? get fajr;
  @override
  int? get sunrise;
  @override
  int? get dhuhr;
  @override
  int? get asr;
  @override
  int? get maghrib;
  @override
  int? get sunset;
  @override
  int? get isha;
  @override
  int? get midnight;
  @override
  @JsonKey(ignore: true)
  _$$PrayerOffsetImplCopyWith<_$PrayerOffsetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerMethodLocation _$PrayerMethodLocationFromJson(Map<String, dynamic> json) {
  return _PrayerMethodLocation.fromJson(json);
}

/// @nodoc
mixin _$PrayerMethodLocation {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerMethodLocationCopyWith<PrayerMethodLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerMethodLocationCopyWith<$Res> {
  factory $PrayerMethodLocationCopyWith(PrayerMethodLocation value,
          $Res Function(PrayerMethodLocation) then) =
      _$PrayerMethodLocationCopyWithImpl<$Res, PrayerMethodLocation>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$PrayerMethodLocationCopyWithImpl<$Res,
        $Val extends PrayerMethodLocation>
    implements $PrayerMethodLocationCopyWith<$Res> {
  _$PrayerMethodLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerMethodLocationImplCopyWith<$Res>
    implements $PrayerMethodLocationCopyWith<$Res> {
  factory _$$PrayerMethodLocationImplCopyWith(_$PrayerMethodLocationImpl value,
          $Res Function(_$PrayerMethodLocationImpl) then) =
      __$$PrayerMethodLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$PrayerMethodLocationImplCopyWithImpl<$Res>
    extends _$PrayerMethodLocationCopyWithImpl<$Res, _$PrayerMethodLocationImpl>
    implements _$$PrayerMethodLocationImplCopyWith<$Res> {
  __$$PrayerMethodLocationImplCopyWithImpl(_$PrayerMethodLocationImpl _value,
      $Res Function(_$PrayerMethodLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$PrayerMethodLocationImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerMethodLocationImpl implements _PrayerMethodLocation {
  _$PrayerMethodLocationImpl({this.latitude, this.longitude});

  factory _$PrayerMethodLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerMethodLocationImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'PrayerMethodLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerMethodLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerMethodLocationImplCopyWith<_$PrayerMethodLocationImpl>
      get copyWith =>
          __$$PrayerMethodLocationImplCopyWithImpl<_$PrayerMethodLocationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerMethodLocationImplToJson(
      this,
    );
  }
}

abstract class _PrayerMethodLocation implements PrayerMethodLocation {
  factory _PrayerMethodLocation(
      {final double? latitude,
      final double? longitude}) = _$PrayerMethodLocationImpl;

  factory _PrayerMethodLocation.fromJson(Map<String, dynamic> json) =
      _$PrayerMethodLocationImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$PrayerMethodLocationImplCopyWith<_$PrayerMethodLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HijriWeekday _$HijriWeekdayFromJson(Map<String, dynamic> json) {
  return _HijriWeekday.fromJson(json);
}

/// @nodoc
mixin _$HijriWeekday {
  String? get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriWeekdayCopyWith<HijriWeekday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriWeekdayCopyWith<$Res> {
  factory $HijriWeekdayCopyWith(
          HijriWeekday value, $Res Function(HijriWeekday) then) =
      _$HijriWeekdayCopyWithImpl<$Res, HijriWeekday>;
  @useResult
  $Res call({String? en, String? ar});
}

/// @nodoc
class _$HijriWeekdayCopyWithImpl<$Res, $Val extends HijriWeekday>
    implements $HijriWeekdayCopyWith<$Res> {
  _$HijriWeekdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HijriWeekdayImplCopyWith<$Res>
    implements $HijriWeekdayCopyWith<$Res> {
  factory _$$HijriWeekdayImplCopyWith(
          _$HijriWeekdayImpl value, $Res Function(_$HijriWeekdayImpl) then) =
      __$$HijriWeekdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? en, String? ar});
}

/// @nodoc
class __$$HijriWeekdayImplCopyWithImpl<$Res>
    extends _$HijriWeekdayCopyWithImpl<$Res, _$HijriWeekdayImpl>
    implements _$$HijriWeekdayImplCopyWith<$Res> {
  __$$HijriWeekdayImplCopyWithImpl(
      _$HijriWeekdayImpl _value, $Res Function(_$HijriWeekdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_$HijriWeekdayImpl(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HijriWeekdayImpl implements _HijriWeekday {
  _$HijriWeekdayImpl({this.en, this.ar});

  factory _$HijriWeekdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$HijriWeekdayImplFromJson(json);

  @override
  final String? en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'HijriWeekday(en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HijriWeekdayImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, ar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HijriWeekdayImplCopyWith<_$HijriWeekdayImpl> get copyWith =>
      __$$HijriWeekdayImplCopyWithImpl<_$HijriWeekdayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HijriWeekdayImplToJson(
      this,
    );
  }
}

abstract class _HijriWeekday implements HijriWeekday {
  factory _HijriWeekday({final String? en, final String? ar}) =
      _$HijriWeekdayImpl;

  factory _HijriWeekday.fromJson(Map<String, dynamic> json) =
      _$HijriWeekdayImpl.fromJson;

  @override
  String? get en;
  @override
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$$HijriWeekdayImplCopyWith<_$HijriWeekdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HijriMonth _$HijriMonthFromJson(Map<String, dynamic> json) {
  return _HijriMonth.fromJson(json);
}

/// @nodoc
mixin _$HijriMonth {
  int? get number => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriMonthCopyWith<HijriMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriMonthCopyWith<$Res> {
  factory $HijriMonthCopyWith(
          HijriMonth value, $Res Function(HijriMonth) then) =
      _$HijriMonthCopyWithImpl<$Res, HijriMonth>;
  @useResult
  $Res call({int? number, String? en, String? ar});
}

/// @nodoc
class _$HijriMonthCopyWithImpl<$Res, $Val extends HijriMonth>
    implements $HijriMonthCopyWith<$Res> {
  _$HijriMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HijriMonthImplCopyWith<$Res>
    implements $HijriMonthCopyWith<$Res> {
  factory _$$HijriMonthImplCopyWith(
          _$HijriMonthImpl value, $Res Function(_$HijriMonthImpl) then) =
      __$$HijriMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? number, String? en, String? ar});
}

/// @nodoc
class __$$HijriMonthImplCopyWithImpl<$Res>
    extends _$HijriMonthCopyWithImpl<$Res, _$HijriMonthImpl>
    implements _$$HijriMonthImplCopyWith<$Res> {
  __$$HijriMonthImplCopyWithImpl(
      _$HijriMonthImpl _value, $Res Function(_$HijriMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_$HijriMonthImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HijriMonthImpl implements _HijriMonth {
  _$HijriMonthImpl({this.number, this.en, this.ar});

  factory _$HijriMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$HijriMonthImplFromJson(json);

  @override
  final int? number;
  @override
  final String? en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'HijriMonth(number: $number, en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HijriMonthImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, en, ar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HijriMonthImplCopyWith<_$HijriMonthImpl> get copyWith =>
      __$$HijriMonthImplCopyWithImpl<_$HijriMonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HijriMonthImplToJson(
      this,
    );
  }
}

abstract class _HijriMonth implements HijriMonth {
  factory _HijriMonth({final int? number, final String? en, final String? ar}) =
      _$HijriMonthImpl;

  factory _HijriMonth.fromJson(Map<String, dynamic> json) =
      _$HijriMonthImpl.fromJson;

  @override
  int? get number;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$$HijriMonthImplCopyWith<_$HijriMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HijriDesignation _$HijriDesignationFromJson(Map<String, dynamic> json) {
  return _HijriDesignation.fromJson(json);
}

/// @nodoc
mixin _$HijriDesignation {
  String? get abbreviated => throw _privateConstructorUsedError;
  String? get expanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriDesignationCopyWith<HijriDesignation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriDesignationCopyWith<$Res> {
  factory $HijriDesignationCopyWith(
          HijriDesignation value, $Res Function(HijriDesignation) then) =
      _$HijriDesignationCopyWithImpl<$Res, HijriDesignation>;
  @useResult
  $Res call({String? abbreviated, String? expanded});
}

/// @nodoc
class _$HijriDesignationCopyWithImpl<$Res, $Val extends HijriDesignation>
    implements $HijriDesignationCopyWith<$Res> {
  _$HijriDesignationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_value.copyWith(
      abbreviated: freezed == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String?,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HijriDesignationImplCopyWith<$Res>
    implements $HijriDesignationCopyWith<$Res> {
  factory _$$HijriDesignationImplCopyWith(_$HijriDesignationImpl value,
          $Res Function(_$HijriDesignationImpl) then) =
      __$$HijriDesignationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? abbreviated, String? expanded});
}

/// @nodoc
class __$$HijriDesignationImplCopyWithImpl<$Res>
    extends _$HijriDesignationCopyWithImpl<$Res, _$HijriDesignationImpl>
    implements _$$HijriDesignationImplCopyWith<$Res> {
  __$$HijriDesignationImplCopyWithImpl(_$HijriDesignationImpl _value,
      $Res Function(_$HijriDesignationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_$HijriDesignationImpl(
      abbreviated: freezed == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String?,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HijriDesignationImpl implements _HijriDesignation {
  _$HijriDesignationImpl({this.abbreviated, this.expanded});

  factory _$HijriDesignationImpl.fromJson(Map<String, dynamic> json) =>
      _$$HijriDesignationImplFromJson(json);

  @override
  final String? abbreviated;
  @override
  final String? expanded;

  @override
  String toString() {
    return 'HijriDesignation(abbreviated: $abbreviated, expanded: $expanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HijriDesignationImpl &&
            (identical(other.abbreviated, abbreviated) ||
                other.abbreviated == abbreviated) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, abbreviated, expanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HijriDesignationImplCopyWith<_$HijriDesignationImpl> get copyWith =>
      __$$HijriDesignationImplCopyWithImpl<_$HijriDesignationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HijriDesignationImplToJson(
      this,
    );
  }
}

abstract class _HijriDesignation implements HijriDesignation {
  factory _HijriDesignation(
      {final String? abbreviated,
      final String? expanded}) = _$HijriDesignationImpl;

  factory _HijriDesignation.fromJson(Map<String, dynamic> json) =
      _$HijriDesignationImpl.fromJson;

  @override
  String? get abbreviated;
  @override
  String? get expanded;
  @override
  @JsonKey(ignore: true)
  _$$HijriDesignationImplCopyWith<_$HijriDesignationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GregorianWeekday _$GregorianWeekdayFromJson(Map<String, dynamic> json) {
  return _GregorianWeekday.fromJson(json);
}

/// @nodoc
mixin _$GregorianWeekday {
  String? get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianWeekdayCopyWith<GregorianWeekday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianWeekdayCopyWith<$Res> {
  factory $GregorianWeekdayCopyWith(
          GregorianWeekday value, $Res Function(GregorianWeekday) then) =
      _$GregorianWeekdayCopyWithImpl<$Res, GregorianWeekday>;
  @useResult
  $Res call({String? en});
}

/// @nodoc
class _$GregorianWeekdayCopyWithImpl<$Res, $Val extends GregorianWeekday>
    implements $GregorianWeekdayCopyWith<$Res> {
  _$GregorianWeekdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GregorianWeekdayImplCopyWith<$Res>
    implements $GregorianWeekdayCopyWith<$Res> {
  factory _$$GregorianWeekdayImplCopyWith(_$GregorianWeekdayImpl value,
          $Res Function(_$GregorianWeekdayImpl) then) =
      __$$GregorianWeekdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? en});
}

/// @nodoc
class __$$GregorianWeekdayImplCopyWithImpl<$Res>
    extends _$GregorianWeekdayCopyWithImpl<$Res, _$GregorianWeekdayImpl>
    implements _$$GregorianWeekdayImplCopyWith<$Res> {
  __$$GregorianWeekdayImplCopyWithImpl(_$GregorianWeekdayImpl _value,
      $Res Function(_$GregorianWeekdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
  }) {
    return _then(_$GregorianWeekdayImpl(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GregorianWeekdayImpl implements _GregorianWeekday {
  _$GregorianWeekdayImpl({this.en});

  factory _$GregorianWeekdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$GregorianWeekdayImplFromJson(json);

  @override
  final String? en;

  @override
  String toString() {
    return 'GregorianWeekday(en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GregorianWeekdayImpl &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GregorianWeekdayImplCopyWith<_$GregorianWeekdayImpl> get copyWith =>
      __$$GregorianWeekdayImplCopyWithImpl<_$GregorianWeekdayImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GregorianWeekdayImplToJson(
      this,
    );
  }
}

abstract class _GregorianWeekday implements GregorianWeekday {
  factory _GregorianWeekday({final String? en}) = _$GregorianWeekdayImpl;

  factory _GregorianWeekday.fromJson(Map<String, dynamic> json) =
      _$GregorianWeekdayImpl.fromJson;

  @override
  String? get en;
  @override
  @JsonKey(ignore: true)
  _$$GregorianWeekdayImplCopyWith<_$GregorianWeekdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GregorianMonth _$GregorianMonthFromJson(Map<String, dynamic> json) {
  return _GregorianMonth.fromJson(json);
}

/// @nodoc
mixin _$GregorianMonth {
  int? get number => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianMonthCopyWith<GregorianMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianMonthCopyWith<$Res> {
  factory $GregorianMonthCopyWith(
          GregorianMonth value, $Res Function(GregorianMonth) then) =
      _$GregorianMonthCopyWithImpl<$Res, GregorianMonth>;
  @useResult
  $Res call({int? number, String? en});
}

/// @nodoc
class _$GregorianMonthCopyWithImpl<$Res, $Val extends GregorianMonth>
    implements $GregorianMonthCopyWith<$Res> {
  _$GregorianMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GregorianMonthImplCopyWith<$Res>
    implements $GregorianMonthCopyWith<$Res> {
  factory _$$GregorianMonthImplCopyWith(_$GregorianMonthImpl value,
          $Res Function(_$GregorianMonthImpl) then) =
      __$$GregorianMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? number, String? en});
}

/// @nodoc
class __$$GregorianMonthImplCopyWithImpl<$Res>
    extends _$GregorianMonthCopyWithImpl<$Res, _$GregorianMonthImpl>
    implements _$$GregorianMonthImplCopyWith<$Res> {
  __$$GregorianMonthImplCopyWithImpl(
      _$GregorianMonthImpl _value, $Res Function(_$GregorianMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
  }) {
    return _then(_$GregorianMonthImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GregorianMonthImpl implements _GregorianMonth {
  _$GregorianMonthImpl({this.number, this.en});

  factory _$GregorianMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$GregorianMonthImplFromJson(json);

  @override
  final int? number;
  @override
  final String? en;

  @override
  String toString() {
    return 'GregorianMonth(number: $number, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GregorianMonthImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GregorianMonthImplCopyWith<_$GregorianMonthImpl> get copyWith =>
      __$$GregorianMonthImplCopyWithImpl<_$GregorianMonthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GregorianMonthImplToJson(
      this,
    );
  }
}

abstract class _GregorianMonth implements GregorianMonth {
  factory _GregorianMonth({final int? number, final String? en}) =
      _$GregorianMonthImpl;

  factory _GregorianMonth.fromJson(Map<String, dynamic> json) =
      _$GregorianMonthImpl.fromJson;

  @override
  int? get number;
  @override
  String? get en;
  @override
  @JsonKey(ignore: true)
  _$$GregorianMonthImplCopyWith<_$GregorianMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GregorianDesignation _$GregorianDesignationFromJson(Map<String, dynamic> json) {
  return _GregorianDesignation.fromJson(json);
}

/// @nodoc
mixin _$GregorianDesignation {
  String? get abbreviated => throw _privateConstructorUsedError;
  String? get expanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianDesignationCopyWith<GregorianDesignation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianDesignationCopyWith<$Res> {
  factory $GregorianDesignationCopyWith(GregorianDesignation value,
          $Res Function(GregorianDesignation) then) =
      _$GregorianDesignationCopyWithImpl<$Res, GregorianDesignation>;
  @useResult
  $Res call({String? abbreviated, String? expanded});
}

/// @nodoc
class _$GregorianDesignationCopyWithImpl<$Res,
        $Val extends GregorianDesignation>
    implements $GregorianDesignationCopyWith<$Res> {
  _$GregorianDesignationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_value.copyWith(
      abbreviated: freezed == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String?,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GregorianDesignationImplCopyWith<$Res>
    implements $GregorianDesignationCopyWith<$Res> {
  factory _$$GregorianDesignationImplCopyWith(_$GregorianDesignationImpl value,
          $Res Function(_$GregorianDesignationImpl) then) =
      __$$GregorianDesignationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? abbreviated, String? expanded});
}

/// @nodoc
class __$$GregorianDesignationImplCopyWithImpl<$Res>
    extends _$GregorianDesignationCopyWithImpl<$Res, _$GregorianDesignationImpl>
    implements _$$GregorianDesignationImplCopyWith<$Res> {
  __$$GregorianDesignationImplCopyWithImpl(_$GregorianDesignationImpl _value,
      $Res Function(_$GregorianDesignationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_$GregorianDesignationImpl(
      abbreviated: freezed == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String?,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GregorianDesignationImpl implements _GregorianDesignation {
  _$GregorianDesignationImpl({this.abbreviated, this.expanded});

  factory _$GregorianDesignationImpl.fromJson(Map<String, dynamic> json) =>
      _$$GregorianDesignationImplFromJson(json);

  @override
  final String? abbreviated;
  @override
  final String? expanded;

  @override
  String toString() {
    return 'GregorianDesignation(abbreviated: $abbreviated, expanded: $expanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GregorianDesignationImpl &&
            (identical(other.abbreviated, abbreviated) ||
                other.abbreviated == abbreviated) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, abbreviated, expanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GregorianDesignationImplCopyWith<_$GregorianDesignationImpl>
      get copyWith =>
          __$$GregorianDesignationImplCopyWithImpl<_$GregorianDesignationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GregorianDesignationImplToJson(
      this,
    );
  }
}

abstract class _GregorianDesignation implements GregorianDesignation {
  factory _GregorianDesignation(
      {final String? abbreviated,
      final String? expanded}) = _$GregorianDesignationImpl;

  factory _GregorianDesignation.fromJson(Map<String, dynamic> json) =
      _$GregorianDesignationImpl.fromJson;

  @override
  String? get abbreviated;
  @override
  String? get expanded;
  @override
  @JsonKey(ignore: true)
  _$$GregorianDesignationImplCopyWith<_$GregorianDesignationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
