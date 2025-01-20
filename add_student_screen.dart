import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final _formKey = GlobalKey<FormState>();

 final List<String> titlelist = ["นาย","นางสาว"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: const Text('บันทึก'),),
ิbody: Container(
padding: const EdgeInsets.all(30),
  decoration: BoxDecoration(
color:  Colors.white,
border: Border.all(width: 0),
borderRadius:
child: Column()
  children: [
const SizedBox(height: 30,)
const Text('เพิ่ม'),
style: TextStyle(
)
Form(child: Column(
context))
Children: [
TextFormField(
maxLength: 13,
KeyboardType: TextInputType.num,
DecoratedBox(decoration: const InputDecoration()

 decoration)

)
items: titlelist.map((item),
value: item,
return DropdownMenuItem(child: Text(item))

)
Validator: (value)
{
  if(value == null){
    return null;
  }
},
count SizedBox()
TextFormField: 20;
MaxLength: 20
decoration: const InputDecoration(


)
FormFieldValidator: (value){
  return (value  == null )
}


] ,
  ],
)
  ) ,
);
  }
}