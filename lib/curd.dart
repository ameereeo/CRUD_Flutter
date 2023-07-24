import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class curd_op extends StatefulWidget {
  const curd_op({super.key});

  @override
  State<curd_op> createState() => _curd_opState();
}

class _curd_opState extends State<curd_op> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  //  create collection
                  await FirebaseFirestore.instance
                      .collection("users")
                      .doc()
                      .set({"name": "hammad"}).then((value) {
                    log("done");
                  });
                },
                child: Text("Insert")),
            ElevatedButton(
                onPressed: () async{
                final ref = await FirebaseFirestore.instance.collection("users").snapshots();
                ref.forEach((element) {
                  log(element.docs.toString());
                 });
                },
                
                      
            
                child: Text("Update")),
            ElevatedButton(onPressed: () {}, child: Text("View")),
            ElevatedButton(onPressed: () {}, child: Text("Delete")),
          ],
        ),
      ),
    );
  }
}
