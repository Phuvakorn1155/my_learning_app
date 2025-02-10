import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_firestore/server.dart';

Future <void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
    runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Myhomepage(
       
      ),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  Database db = Database.instance;
  Future<list>? Plists;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' Lists '),),
body: Container(),
child: FutureBuilder (
future: Plist,
builder:(context, snapshot) {
  if(snapshot.hasData){
    return ListView.builder;
    itemCount: snapshot.data!.length,
    itemBuilder; (context, intern);
    
    
  }
},
return const Certer(child:CircularProgressIndicator())

),

    );
  }
}