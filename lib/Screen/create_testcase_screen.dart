import 'package:flutter/material.dart';
class CreateTestcaseScreen extends StatefulWidget {
  const CreateTestcaseScreen({Key? key}) : super(key: key);

  @override
  State<CreateTestcaseScreen> createState() => _CreateTestcaseScreenState();
}

class _CreateTestcaseScreenState extends State<CreateTestcaseScreen> {
  String classAValue = 'aTest 1';
  String classBValue = 'bTest 1';

  // List of items in our dropdown menu
  var aItems = [
    'aTest 1',
    'aTest 2',
    'aTest 3',
    'aTest 4',
    'aTest 5',
  ];
  var bItems = [
    'bTest 1',
    'bTest 2',
    'bTest 3',
    'bTest 4',
    'bTest 5',
  ];

  TextEditingController userInput = TextEditingController();
  TextEditingController methodInput = TextEditingController();
  TextEditingController canInput = TextEditingController();
  TextEditingController returnInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white70,
          child: Row(
            children: [
              Expanded(flex:3,child: Container(

                margin: const EdgeInsets.fromLTRB(20, 100, 20, 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Class A",),
                    Container(
                      width: 200,
                      child: DropdownButton(
                        value: classAValue,
                        icon: const Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                        style: TextStyle(color: Colors.black),
                        items: aItems.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            classAValue = newValue!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 150),
                    Text("Class A",style: TextStyle(color: Colors.black),),
                    Container(
                      width: 200,
                      child: DropdownButton(
                        value: classBValue,
                        icon: const Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                        style: TextStyle(color: Colors.black),
                        items: bItems.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            classBValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )),
              Expanded(flex:7,child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Text Group:",style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 200,
                          child: DropdownButton(
                            value: classAValue,
                            icon: const Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                            style: const TextStyle(color: Colors.black),
                            items: aItems.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                classAValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        const Text(
                            "Text name:",style: TextStyle(color: Colors.black),),
                        Container(
                          width: 200,
                            decoration: BoxDecoration(border:Border.all(width:1,color: Colors.grey),),
                          child: TextFormField(
                            controller: userInput,
                            onChanged: (value) {
                              setState(() {
                                userInput.text = value.toString();
                              });
                            },
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 400,
                        width: 700,
                        decoration: BoxDecoration(border:Border.all(width:3,color: Colors.grey)
                        ),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Method name:",style: TextStyle(color: Colors.black),),
                                const SizedBox(width: 20,),
                                Container(
                                  height: 50,
                                    width: 200,
                                  decoration: BoxDecoration(border:Border.all(width:1,color: Colors.grey),),
                                    child: TextFormField(
                                      controller: methodInput,
                                      onChanged: (value) {
                                        setState(() {
                                          methodInput.text = value.toString();
                                        });
                                      },
                                    ),
                                ),
                              ],
                            ),
                            const Expanded(child: SizedBox(height: 20,)),
                            Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(border:Border.all(width:1,color: Colors.grey),),
                                child: TextFormField(
                                  controller: canInput,
                                  onChanged: (value) {
                                    setState(() {
                                      canInput.text = value.toString();
                                    });
                                  },
                                )
                            ),
                            const Expanded(child: SizedBox(height: 20,)),
                            Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(border:Border.all(width:1,color: Colors.grey),),
                                child: const Text("Value of above Droupdown")
                            ),
                            const Expanded(child: SizedBox(height: 20,)),
                            Row(
                              children: [
                                const Text(
                                  "Return value:",style: TextStyle(color: Colors.black),),
                                const SizedBox(width: 20,),
                                Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(border:Border.all(width:1,color: Colors.grey),),
                                  child: TextFormField(
                                    controller: returnInput,
                                    onChanged: (value) {
                                      setState(() {
                                        returnInput.text = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const Expanded(child: SizedBox(height: 20,)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(onPressed:(){

                                }, child: const Text("Add text",style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),),style: const ButtonStyle( backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                                ),)
                              ],
                            )
                          ],
                        ) ,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed:(){

                        }, child: const Text("Add testcase",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),style: const ButtonStyle( backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                        ),)
                      ],
                    )
                  ],
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
