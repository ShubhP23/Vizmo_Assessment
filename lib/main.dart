import 'package:vizmo_assesment/screens/home_page.dart';
import 'package:vizmo_assesment/utils/barrels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) => const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
