import 'package:ids_mini_app/core.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override 
  Widget build(BuildContext context){
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(
            strokeWidth: 3,
            color: Colors.blue,
          ),
          SizedBox(height: 10),
          Text(
            'Loading...',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black
            ),
          )
        ],
      ),
    );
  }
}