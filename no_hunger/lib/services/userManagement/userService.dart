import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:no_hunger/models/userManagement/user.dart';
import '../../models/common/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Users');

class postService {
  static get message => null;

  static Future<Response> addUser({
    required String name,
    required String email,
    required String username,
    required String password,
  }) async {
    Response response = Response(code: null, message: message);
    DocumentReference documentReferencer = _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "name": name,
      "email": email,
      "username": username,
      "password": password
    };

    var result = await documentReferencer.set(data).whenComplete(() {
      response.code = 200;
      response.message = "User Added Successfully";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Stream<QuerySnapshot> readUsers() {
    CollectionReference notesItemCollection = _Collection;

    return notesItemCollection.snapshots();
  }

  static Future<Response> deleteUser({
    required String docId,
  }) async {
    Response response = Response(code: null, message: message);
    DocumentReference documentReferencer = _Collection.doc(docId);

    await documentReferencer.delete().whenComplete(() {
      response.code = 200;
      response.message = "User Deleted Successfully";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Future<void> deleteUsers({
    required String docId,
  }) async {
    DocumentReference documentReference =
        _Collection.doc("1").collection('Users').doc(docId);
    await documentReference
        .delete()
        .whenComplete(() => print("Note item deleted from the database"))
        .catchError((e) => print(e));
  }
}
