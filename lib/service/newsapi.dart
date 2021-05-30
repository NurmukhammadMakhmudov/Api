import 'package:dio/dio.dart';
import 'package:customappbar/commons/globals.dart' as globals;
import 'package:customappbar/models/article_data.dart';
Dio dio=Dio(globals.dioBaseOptions);
class NewsApiService {
  Future<Welcome> getArticle() async{
    try{

      final Response response= await dio.get('/everything?q=bitcoin&apiKey=7c2bd72fa7014a13b4f522e8017c9f4d');
      print(response.data);
      Welcome welcome = Welcome.fromJson(response.data);
      print(welcome.articles[0].title);
      return welcome;

     }



    catch(e){
      print(e.toString());
      throw Exception(e.toString());
    }
  }


}
