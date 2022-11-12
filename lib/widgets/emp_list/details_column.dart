import 'package:vizmo_assesment/data/models/emp_data_model/emp_data_model.dart';
import 'package:vizmo_assesment/utils/barrels.dart';

class DetailsColumn extends StatelessWidget {
  const DetailsColumn({
    required this.e,
    required this.dateFormat,
    Key? key,
  }) : super(key: key);

  final EmpDataModel e;
  final String dateFormat;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: CircleAvatar(
              radius: 40.sp,
              backgroundImage: NetworkImage(e.avatar),
            ),
          ),
        ),
        Divider(thickness: 1.sp),
        Text(
          'Name: ${e.name}',
          style: KTextStyle.kDetailsTextStyle,
        ),
        Divider(thickness: 1.sp),
        Text(
          'Phone: ${e.phone}',
          style: KTextStyle.kDetailsTextStyle,
        ),
        Divider(thickness: 1.sp),
        Text(
          'Email: ${e.email}',
          style: KTextStyle.kDetailsTextStyle,
        ),
        Divider(thickness: 1.sp),
        Text(
          'Birthday: $dateFormat',
          style: KTextStyle.kDetailsTextStyle,
        ),
        Divider(thickness: 1.sp),
        Text(
          'Country: ${e.country}',
          style: KTextStyle.kDetailsTextStyle,
        ),
        Divider(thickness: 1.sp),
        Text(
          'Id: ${e.id}',
          style: KTextStyle.kDetailsTextStyle,
        ),
        Divider(thickness: 1.sp),
      ],
    );
  }
}
