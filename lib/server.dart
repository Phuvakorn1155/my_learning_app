
import 'package:cloud_firestore/cloud_firestore.dart';

class Database{

static Database instance = Database();
Future getAllData() async {
// ignore: unused_local_variable
final reference = FirebaseFirestore.instance.collection("PLists");
//id 
Query query = reference.orderBy("id");
final snapshots = query.snapshots();
return snapshots.map(
{snapshots}

{
return snapshots.docs.map(
(doc){
if (doc.exists)
return doc.data();

}
};

}

).toList();
}



}