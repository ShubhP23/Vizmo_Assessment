import 'package:vizmo_assesment/screens/emp_list/employee_list.dart';
import 'package:vizmo_assesment/screens/profile.dart';
import 'package:vizmo_assesment/utils/barrels.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    EmployeeListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: Colors.teal[100],
        selectedItemColor: Colors.teal,
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: KString.kEmpList,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: KString.kProfile,
          ),
        ],
      ),
    );
  }
}
