import 'package:flutter/material.dart';
import 'package:no_hunger/models/donationManagement/donation.dart';
import 'package:no_hunger/services/donationManagement/donationService.dart';

import 'listDonation.dart';

class EditDonation extends StatefulWidget {
  final Donation? donation;
  EditDonation({this.donation});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EditDonation();
  }
}

class _EditDonation extends State<EditDonation> {
  final _docid = TextEditingController();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _mobileNumber = TextEditingController();
  final _location = TextEditingController();
  final _category = TextEditingController();
  final _description = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState

    _docid.value = TextEditingValue(text: widget.donation!.did.toString());
    _name.value = TextEditingValue(text: widget.donation!.name.toString());
    _email.value =
        TextEditingValue(text: widget.donation!.email.toString());
    _mobileNumber.value = TextEditingValue(text: widget.donation!.mobileNumber.toString());
    _location.value = TextEditingValue(text: widget.donation!.location.toString());
    _category.value = TextEditingValue(text: widget.donation!.category.toString());
    _description.value =
        TextEditingValue(text: widget.donation!.description.toString());
  }

  @override
  Widget build(BuildContext context) {
    final DocIDField = TextField(
        controller: _docid,
        readOnly: true,
        autofocus: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Name",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final nameField = TextFormField(
        controller: _name,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Name",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final emailField = TextFormField(
        controller: _email,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Email",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final contactField = TextFormField(
        controller: _mobileNumber,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Mobile Number",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final locationField = TextFormField(
        controller: _location,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Location",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final categoryField = TextFormField(
        controller: _category,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Category",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final descriptionField = TextFormField(
        controller: _description,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Description",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final viewListbutton = TextButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => ListDonation(),
            ),
            (route) => false, //if you want to disable back feature set to false
          );
        },
        child: const Text('View List of Donations'));

    final SaveButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var response = await donationService.updateDonation(
                docId: _docid.text,
                name: _name.text,
                email: _email.text,
                mobileNumber: _mobileNumber.text,
                location: _location.text,
                category: _category.text,
                description: _description.text);

            if (response.code != 200) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            }
          }
        },
        child: Text(
          "Update",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Edit Donation'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // DocIDField,
                  // const SizedBox(height: 25.0),
                  nameField,
                  const SizedBox(height: 15.0),
                  emailField,
                  const SizedBox(height: 15.0),
                  contactField,
                  const SizedBox(height: 15.0),
                  locationField,
                  const SizedBox(height: 15.0),
                  categoryField,
                  const SizedBox(height: 15.0),
                  descriptionField,
                  viewListbutton,
                  const SizedBox(height: 45.0),
                  SaveButon,
                  const SizedBox(height: 15.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
