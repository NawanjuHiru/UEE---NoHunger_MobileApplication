import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/common/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Donation');

class donationService {
  //add donation
  static Future<Response> addDonation({
    required String name,
    required String email,
    required int mobileNumber,
    required String location,
    required String description,
  }) async {
    Response response = Response();
    DocumentReference documentReference = _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "name": name,
      "email": email,
      "mobileNumber": mobileNumber,
      "location": location,
      "description": description
    };

    var result = await documentReference
      .set(data)
      .whenComplete(() {
        response.code = 200;
        response.message = "Successfully Added a Donation.";
      });

      return response;
  }
}