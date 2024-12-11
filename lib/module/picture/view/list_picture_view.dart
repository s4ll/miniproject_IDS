import 'package:ids_mini_app/core.dart';

class ListPictureView extends GetView<ListPictureController> {
  const ListPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Photo'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const LoadingWidget();
        }

        if (controller.pictures.isEmpty) {
          // ignore: avoid_print
          print(controller.pictures);
          return const Center(
            child: Text('No pictures available'),
          );
        }

        return ListView.builder(
          itemCount: controller.pictures.length,
          itemBuilder: (context, index) {
            final picture = controller.pictures[index];
            return ListTile(
              title: ListContentWidget(
                imagePath: picture['download_url'] ?? "",
                caption: "by: ${picture['author']}",
              ),
              onTap: () {
                Get.toNamed(Paths.DETAIL_PICTURE, arguments: picture['id']);
              },
            );
          },
        );
      }),
    );
  }
}
