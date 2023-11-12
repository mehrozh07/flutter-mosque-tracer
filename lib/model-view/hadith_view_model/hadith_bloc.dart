import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mosque_tracer/models/hadith_model.dart';
import 'package:http/http.dart' as http;

part 'hadith_event.dart';
part 'hadith_state.dart';

class HadithBloc extends Bloc<HadithEvent, HadithState> {
  HadithBloc() : super(HadithInitial()) {
    on<HadithDone>((event, emit) async{

      try{
        emit(HadithLoading());
        final response  = await http.get(
            Uri.parse(
              'https://hadithapi.com/api/hadiths?apiKey=\$2y\$10\$7JAUkgRgviJZTa0oBbSXuAhQGXcubMeSKDoNOjjL9KZtZTUwe'
            ),
        );
        if(response.statusCode == 200){
          Map<String,dynamic> jsonData = jsonEncode(response.body) as Map<String,dynamic>;
          HadithModel hadithModel = HadithModel.fromJson(jsonData);
          emit(HadithLoaded(hadithModel));
        }else if (response.statusCode != 200){
          emit(HadithError(response.body));
        }
      }catch(e){
        emit(HadithError(e.toString()));
      }

    });
  }
}
