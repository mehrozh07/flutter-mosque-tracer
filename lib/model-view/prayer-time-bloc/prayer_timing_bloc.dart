import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mosque_tracer/models/prayer-timing-model/prayer_timing_model.dart';
import 'package:http/http.dart' as http;
part 'prayer_timing_event.dart';
part 'prayer_timing_state.dart';

class PrayerTimingBloc extends Bloc<PrayerTimingEvent, PrayerTimingState> {
  PrayerTimingBloc() : super(PrayerTimingInitial()) {
    on<PrayerTimingDone>((event, emit) async{
      try{
        emit(PrayerTimingLoading());
        final response = await http.get(
          Uri.parse(
            'http://api.aladhan.com/v1/timingsByCity?city=${event.city}&country=${event.country}&method=2'
          )
        );
        if(response.statusCode == 200){
          Map<String,dynamic> responseData = jsonDecode(response.body) as Map<String,dynamic>;
          PrayerTimingModel prayerTimingModel  = PrayerTimingModel.fromJson(responseData);
          emit(PrayerTimingLoaded(prayerTimingModel));
        }else if(response.statusCode != 200){
          emit(PrayerTimingError('Error==> ${response.statusCode} ====> ${response.body}'));
        }
      }catch(e){
        emit(PrayerTimingError(e.toString()));
      }
    });
  }
}
