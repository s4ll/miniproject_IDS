import 'package:ids_mini_app/core.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Paths.LIST_PICTURE,
      page: () => const ListPictureView(),
      binding: PictureBinding(),
    ),
    GetPage(
      name: Paths.DETAIL_PICTURE,
      page: () => const DetailPictureView(),
      binding: PictureBinding(),
    ),
  ];
}