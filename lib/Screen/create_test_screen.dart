import 'package:flutter/material.dart';

class CreateTest extends StatefulWidget {
  const CreateTest({Key? key}) : super(key: key);

  @override
  State<CreateTest> createState() => _CreateTestState();
}

class _CreateTestState extends State<CreateTest> {
   TextEditingController createController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 200,
                color: Colors.purpleAccent,
                child: const Center(
                  child: Text(
                    "test name",style: TextStyle(fontSize: 24,color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 600,
                child: TextFormField(
                  controller: createController,
                  onSaved: (String? value) {
                    createController.text=value.toString();
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
