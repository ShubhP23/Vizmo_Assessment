import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo_assesment/controllers/cubit/emp_data_cubit/emp_data_cubit.dart';
import 'package:vizmo_assesment/data/models/emp_data_model/emp_data_model.dart';
import 'package:vizmo_assesment/screens/emp_list/emp_details_page.dart';
import 'package:vizmo_assesment/utils/barrels.dart';

class EmployeeListScreen extends StatefulWidget {
  const EmployeeListScreen({super.key});

  @override
  State<EmployeeListScreen> createState() => _EmployeeListScreenState();
}

class _EmployeeListScreenState extends State<EmployeeListScreen> {
  final scrollController = ScrollController();

  void setupScrollController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<EmpDataCubit>(context).loadData();
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    setupScrollController(context);
    BlocProvider.of<EmpDataCubit>(context).loadData();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[100]),
      body: BlocBuilder<EmpDataCubit, EmpDataState>(
        builder: (context, state) {
          if (state is DataLoading && state.isFirstFetched) {
            return _loadingIndicator();
          }
          List<EmpDataModel> data = [];
          bool isLoading = false;
          if (state is DataLoading) {
            data = state.oldData;
            isLoading = true;
          } else if (state is DataLoaded) {
            data = state.data;
          }
          return ListView.separated(
            controller: scrollController,
            separatorBuilder: (context, index) => Divider(),
            itemCount: data.length + (isLoading ? 1 : 0),
            itemBuilder: (context, index) {
              if (index < data.length) {
                var userData = data[index];
                return ListTile(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmpDetailsPage(e: userData),
                    ),
                  ),
                  title: Text(userData.name),
                  subtitle: Text(userData.phone),
                  trailing: CircleAvatar(
                    radius: 20.sp,
                    backgroundImage: NetworkImage(userData.avatar),
                  ),
                );
              } else {
                Timer(Duration(milliseconds: 30), () {
                  scrollController
                      .jumpTo(scrollController.position.maxScrollExtent);
                });

                return _loadingIndicator();
              }
            },
          );
        },
      ),
    );
  }
}

Widget _loadingIndicator() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Center(child: CircularProgressIndicator.adaptive()),
  );
}
