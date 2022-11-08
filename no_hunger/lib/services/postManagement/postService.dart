import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/common/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Post');

class postService{
  static get message => null;

    static Future<Response> addPost({
      required String title,
      required String date,
      required String description,
  }) async {

    Response response = Response(code: null, message: message);
    DocumentReference documentReferencer =
    _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "date": date,
      "description" : description
    };

    var result = await documentReferencer
        .set(data)
        .whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully added the post";
    })
        .catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
}