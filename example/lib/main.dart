import 'package:flutter/material.dart';
import 'package:bmnav_null_safety/bmnav.dart' as bmnav;

void main() {
  runApp(
    MaterialApp(
      title: 'Bottom Nav Demo',
      home: const MainWidget(),
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
    ),
  );
}

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const WorkoutsScreen(),
    const AccountScreen(),
    const SettingsScreen()
  ];
  Widget currentScreen = const HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Nav Demo',
            style: TextStyle(color: Colors.black)),
        elevation: 2.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        labelStyle: const bmnav.LabelStyle(visible: false),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: const [
          bmnav.BottomNavItem(icon: Icons.home, label: 'Home'),
          bmnav.BottomNavItem(icon: Icons.fitness_center, label: 'Workouts'),
          bmnav.BottomNavItem(icon: Icons.person, label: 'Account'),
          bmnav.BottomNavItem(icon: Icons.view_headline, label: 'Settings')
        ],
      ),
    );
  }
}

// Home Screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(50.0),
        child: const Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }
}

// Workouts Screen
class WorkoutsScreen extends StatefulWidget {
  const WorkoutsScreen({Key? key}) : super(key: key);
  @override
  WorkoutsScreenState createState() => WorkoutsScreenState();
}

class WorkoutsScreenState extends State<WorkoutsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(50.0),
        child: const Text(
          'Workouts',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }
}

// Account Screen
class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  AccountScreenState createState() => AccountScreenState();
}

class AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow[600],
        padding: const EdgeInsets.all(50.0),
        child: const Text(
          'Account',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }
}

// Settings Screen
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(50.0),
        child: const Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }
}
