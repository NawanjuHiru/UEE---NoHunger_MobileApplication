///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:no_hunger/screens/donationManagement/donationList.dart';
import 'package:no_hunger/screens/postManagement/editPost.dart';
import 'package:no_hunger/screens/postManagement/postList.dart';
import 'package:no_hunger/screens/postManagement/reviewPost.dart';
import '../../widgets/FlutterVizBottomNavigationBarModel.dart';
import 'package:no_hunger/models/postManagement/post.dart';
import 'package:no_hunger/services/postManagement/postService.dart';
import 'postListNew.dart';

class ViewPostScreen extends StatefulWidget {
  final String post_id;
  final String post_title;
  final String post_date;
  final String post_description;

  const ViewPostScreen({
    Key? key,
    required this.post_id,
    required this.post_title,
    required this.post_description,
    required this.post_date,
  }) : super(key: key);

  @override
  State<ViewPostScreen> createState() => _ViewPostScreenState();
}

class _ViewPostScreenState extends State<ViewPostScreen> {
  List<FlutterVizBottomNavigationBarModel> flutterVizBottomNavigationBarItems =
      [
    FlutterVizBottomNavigationBarModel(icon: Icons.home, label: "Home"),
    FlutterVizBottomNavigationBarModel(icon: Icons.article, label: "Donation"),
    FlutterVizBottomNavigationBarModel(icon: Icons.location_on, label: "Place"),
    FlutterVizBottomNavigationBarModel(icon: Icons.credit_card, label: "Post"),
    FlutterVizBottomNavigationBarModel(
        icon: Icons.account_circle, label: "Account")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff3a57e8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Post",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xffffffff),
          iconSize: 24,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostList(),
                ));
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: flutterVizBottomNavigationBarItems
            .map((FlutterVizBottomNavigationBarModel item) {
          return BottomNavigationBarItem(
            icon: Icon(item.icon),
            label: item.label,
          );
        }).toList(),
        backgroundColor: Color(0xffffffff),
        currentIndex: 3,
        elevation: 8,
        iconSize: 24,
        selectedItemColor: Color(0xff3a57e8),
        unselectedItemColor: Color(0xff9e9e9e),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {},
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 30, 16, 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "View Post",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                  color: Color(0xff000000),
                ),
              ),
              Text(widget.post_title),
              Text(widget.post_description),
              Text(widget.post_date),
              Text(widget.post_id),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: TextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    hintText: "Title",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    filled: true,
                    fillColor: Color(0xffffffff),
                    isDense: false,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Text(
                  "Upload a photo",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: NetworkImage(
                                "https://picsum.photos/250?image=9"),
                            height: 100,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff3a57e8),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                              border: Border.all(
                                  color: Color(0x4d9e9e9e), width: 1),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {},
                              color: Color(0xffffffff),
                              iconSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: TextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    hintText: "Description",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    filled: true,
                    fillColor: Color(0xffffffff),
                    isDense: false,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReviewPostScreen(),
                          ),
                        );
                      },
                      color: Color(0xff3a57e8),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Color(0xff3a57e8), width: 1),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Review",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      textColor: Color(0xffffffff),
                      height: 40,
                      minWidth: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: MaterialButton(
                        onPressed: () async {
                          var response = await postService.deletePost(docId: widget.post_id);
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
                          // };
                        },
                        color: Color(0xffec1212),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(color: Color(0xffec1212), width: 1),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Delete",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        textColor: Color(0xffffffff),
                        height: 40,
                        minWidth: 100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => EditPost(
                                post_id: widget.post_id,
                                post_title: widget.post_title,
                                post_description: widget.post_description,
                                post_date: widget.post_date,
                              ),
                            ),
                          );
                        },
                        color: Color(0xffec1212),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(color: Color(0xffec1212), width: 1),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        textColor: Color(0xffffffff),
                        height: 40,
                        minWidth: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
