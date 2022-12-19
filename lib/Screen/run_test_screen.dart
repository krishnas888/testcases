import 'package:flutter/material.dart';

class RunTestScreen extends StatefulWidget {
  const RunTestScreen({Key? key}) : super(key: key);

  @override
  State<RunTestScreen> createState() => _RunTestScreenState();
}

class _RunTestScreenState extends State<RunTestScreen> {
  String dropdownvalue = 'test 1';

  // List of items in our dropdown menu
  var items = [
    'test 1',
    'test 2',
    'test 3',
    'test 4',
    'test 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              Expanded(child: Container()),
              TextButton(onPressed: (){}, child: const Text("Run",style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
