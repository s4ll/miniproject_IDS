import 'package:ids_mini_app/core.dart';

class ListContentWidget extends StatelessWidget {
  final String imagePath;
  final String caption;

  const ListContentWidget({
    super.key,
    required this.imagePath,
    required this.caption,
  });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        child: Column(
          children: [
            ClipRRect(
              child: Image.network(
                imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  caption,
                  style: const TextStyle(
                    fontSize: 14
                  ),
                ),
              ), 
              )
          ],
        ),
      ),
    );
  }
}