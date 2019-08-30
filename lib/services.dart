import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:jikanganai/currentA_model.dart';
import 'package:jikanganai/details_model.dart';
import 'dart:io';

String url = 'https://api.jikan.moe/v3';

Future<CurrentSeason> getCurrentAnime() async {
  final response = await http.get('$url/season/2019/summer');
  return currentSeasonFromJson(response.body);
}

Future<Details> getDetails(String id) async{
  final response = await http.get('$url/anime/$id');
  return detailsFromJson(response.body);
}