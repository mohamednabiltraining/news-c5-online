import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_c5_online/model/news_response.dart';
import 'package:news_c5_online/model/sources_response.dart';

class ApiManager{
  static const String BaseUrl = 'newsapi.org';
  static Future<SourcesResponse> getSources(String categoryId)async{
    // call api to get news sources
    ///?=
    var url = Uri.https(BaseUrl, "/v2/top-headlines/sources",
    {'apikey':'5909ae28122a471d8b0c237d5989cb73',
      'category':categoryId
    });
    var response = await http.get(url);
    try{
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var sourcesResponse = SourcesResponse.fromJson(json);
      return sourcesResponse;
    }catch(e){
      throw e;
    }
  }
  
  static Future<NewsResponse> getNews(String sourceId,String searchKeyWord)async{
    ///?=&=abc-news
    var url = Uri.https(BaseUrl, '/v2/everything',
    {'apiKey':'5909ae28122a471d8b0c237d5989cb73',
      'sources':sourceId,
    'q':searchKeyWord});
    var response = await http.get(url);
    try{
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var newsResponse = NewsResponse.fromJson(json);
      return newsResponse;
    }catch(e){
      throw e;
    }

  }
}