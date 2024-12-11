import 'package:ids_mini_app/core.dart';

class PictureBinding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut<ListPictureController>(() => ListPictureController());
    Get.lazyPut<DetailPictureController>(() => DetailPictureController());
  }
}