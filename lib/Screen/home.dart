import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_testing/Screen/run_test_screen.dart';

import 'create_test_screen.dart';
import 'create_testcase_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final List<Widget> _screens = [
    const RunTestScreen(),
    const CreateTest(),
    const CreateTestcaseScreen(),
  ];
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              NavigationRail(
                onDestinationSelected: (int index){
                  setState((){
                    _selectIndex = index;
                  });
                },
                selectedIndex: _selectIndex,
                destinations: const [
                  NavigationRailDestination(
                      icon: Icon(Icons.play_circle_outline,size: 20,color: Colors.purpleAccent,),
                      label: Text(
                        "Run",
                        style: TextStyle(color: Colors.deepOrange,fontSize: 20),
                      )),
                  NavigationRailDestination(
                      icon: Icon(Icons.play_circle_outline,size: 20,color: Colors.purple,),
                      label: Text(
                        "Create test",
                        style: TextStyle(color: Colors.orange,fontSize: 20),
                      )),
                  NavigationRailDestination(
                      icon: Icon(Icons.play_circle_outline,size: 20,color: Colors.deepPurple,),
                      label: Text(
                        "Create text case",
                        style: TextStyle(color: Colors.yellowAccent,fontSize: 20),
                      )),
                ],
                //labelType: NavigationRailLabelType.all,
                extended: true,
              ),
              Expanded(child: _screens[_selectIndex]),

            ],
          ),
        ),
      ),
    );
  }
}
