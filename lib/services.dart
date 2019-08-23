import 'package:jikanganai/currentA_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';

String url = 'https://api.jikan.moe/v3/';

Future<CurrentSeason> getTopAnime() async{
  final response = await http.get('$url/top/anime/airing');
  return currentSeasonFromJson(response.body);
}
