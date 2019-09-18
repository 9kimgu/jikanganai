import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:jikanganai/models/currentA_model.dart';
import 'package:jikanganai/models/details_model.dart';
import 'dart:io';
import 'package:async/async.dart';

String url = 'https://api.jikan.moe/v3';
final  AsyncMemoizer _memoizer = AsyncMemoizer();

Future<CurrentSeason> getCurrentAnime() async {
  final response = await http.get('$url/season/2019/summer');

  // return _memoizer.runOnce(() async {
  //   final response = await http.get('$url/season/2019/summer');
  //   return currentSeasonFromJson(response.body);
  // });
  return currentSeasonFromJson(response.body);
}

Future<Details> getDetails(String id) async{
  final response = await http.get('$url/anime/$id');
  return detailsFromJson(response.body);
}