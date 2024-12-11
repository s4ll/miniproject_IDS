import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio = Dio();

  Future<List<Map<String, dynamic>>> fetchPictures() async {
    try {
      final response = await _dio.get('https://picsum.photos/v2/list');
      if (response.statusCode == 200) {
        final List data = response.data;
        return data.map((item) => item as Map<String, dynamic>).toList();
      }else{
        throw Exception('Failed to load pictures');
      }
    } catch(e){
      throw Exception('Error occured: $e');
    }
  }

  Future<Map<String, dynamic>> detailPicture(int id) async {
    try{
      final response = await _dio.get('https://picsum.photos/id/1/info');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      } else {
        throw Exception('Failed to load detail picture');
      }
    } catch(e) {
      throw Exception('Error occured: $e');
    }
  }
}