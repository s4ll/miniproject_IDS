import 'package:ids_mini_app/core.dart';

class DetailPictureView extends StatelessWidget {
  const DetailPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final String? pictureIdStr = Get.arguments as String?;
    final int? pictureId =
        pictureIdStr != null ? int.tryParse(pictureIdStr) : null;

    final DetailPictureController controller =
        Get.find<DetailPictureController>();

    if (pictureId == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Detail Photo"),
        ),
        body: const Center(
          child: Text("invalid Picture Id"),
        ),
      );
    }

    controller.loadPictureDetail(pictureId);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Photo"),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        final detail = controller.pictureDetail.value;
        if (detail == null) {
          return const Center(
            child: Text("Failed to load picture details"),
          );
        }

        return DetailContentWidget(
            imagePath: detail['download_url'],
            caption: "Taken by: ${detail['author']}");
      }),
    );
  }
}
