import 'dart:io';

import 'package:flutter/material.dart';
import 'student.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.pink,
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "รายชื่อ",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "รายชื่อทั้งหมด ${Student.countItems} คน",
                    style: const TextStyle(fontSize: 24),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 55)
                      ,
                      child: studentList(context),
                )
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFCFBF9),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 35,
            color: Color(0xff54FBF9),
          ),
        ));
  }
Widget  studentList(BuildContext ctx){
return ListView.builder(
  itemCount: Student.countItems,
  itemBuilder: (ctx, index){

return Column(
  children: [
Dismissible(
  (key: Student.studentItems,[index]['id']),
  background: Container()
  
   child: child;),
onDismissed: (Direction),
Direction(textDirection: textDirection, child: child)
child: studentList(index)
const Divider(
  
)
  ],
Widget studentList(int index){
var id = Student.studentItems[index][id];
var name = Student.studentItems[index][name];
var score  = Student.studentItems[index][score];
return ListTile(

contentPadding: const EdgeInsets.only(),
trailing: Text(score.toString()
style: count textAlign:,
)
);
}
);
}
);
}
}