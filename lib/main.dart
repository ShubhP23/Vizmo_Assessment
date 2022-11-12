import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo_assesment/controllers/cubit/checkin_data_cubit/checkin_data_cubit.dart';
import 'package:vizmo_assesment/controllers/cubit/emp_data_cubit/emp_data_cubit.dart';
import 'package:vizmo_assesment/data/repositories/emp_repo.dart';
import 'package:vizmo_assesment/data/services/service.dart';
import 'package:vizmo_assesment/screens/main_screen.dart';
import 'package:vizmo_assesment/utils/barrels.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      empRepo: EmpRepo(Service()),
    ),
  );
}

class MyApp extends StatelessWidget {
  final EmpRepo empRepo;
  const MyApp({required this.empRepo, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => EmpDataCubit(empRepo)),
          BlocProvider(create: (context) => CheckInDataCubit()),
        ],
        child: MaterialApp(
          home: HomePage(),
        ),
      ),
    );
  }
}
