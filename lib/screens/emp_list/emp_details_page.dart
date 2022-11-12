import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo_assesment/controllers/cubit/checkin_data_cubit/checkin_data_cubit.dart';
import 'package:vizmo_assesment/controllers/cubit/checkin_data_cubit/checkin_data_state.dart';
import 'package:vizmo_assesment/data/models/emp_data_model/emp_data_model.dart';
import 'package:vizmo_assesment/utils/barrels.dart';
import 'package:vizmo_assesment/widgets/emp_list/details_column.dart';

class EmpDetailsPage extends StatelessWidget {
  final EmpDataModel e;
  const EmpDetailsPage({required this.e, super.key});

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.parse(e.birthday);
    var dateFormat = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
      ),
      body: BlocConsumer<CheckInDataCubit, CheckInDataState>(
        builder: (context, state) {
          if (state is CheckInDataLoading) {
            return Center(child: CircularProgressIndicator.adaptive());
          }
          if (state is CheckInDataLoaded) {
            return Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(e.avatar),
                ),
              ],
            );
          }
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 4.w),
            child: DetailsColumn(e: e, dateFormat: dateFormat),
          );
        },
        listener: (context, state) {
          if (state is CheckInDataError) {
            SnackBar snackBar = SnackBar(
              content: Text(state.error, textAlign: TextAlign.center),
              backgroundColor: Colors.red,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
      ),
    );
  }
}
