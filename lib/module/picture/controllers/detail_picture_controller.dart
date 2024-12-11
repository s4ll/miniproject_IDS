import 'package:ids_mini_app/core.dart';

class DetailPictureController extends GetxController {
  final PictureService _service = PictureService();

  var pictureDetail = Rxn<Map<String,dynamic>>();
  var isLoading = false.obs;

  Future<void> loadPictureDetail(int id) async {
    isLoading.value = true;
    try {
      final data = await _service.detailPicture(id);
      pictureDetail.value = data;
    } catch(e){
      // ignore: avoid_print
      print('Error $e');
      pictureDetail.value = null;
    } finally {
      isLoading.value = false;
    }
  }
}