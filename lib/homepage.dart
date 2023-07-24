import 'dart:developer';

import 'package:ameereeo/curd.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController _email  =TextEditingController();
  TextEditingController _password  =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center ,
        children: [
          TextFormField(
            controller: _email,
          ),
          TextFormField(
            controller: _password,
          ),

          Center(
            child: ElevatedButton(
              onPressed: () async{
                //acount create
                // await FirebaseAuth.instance.createUserWithEmailAndPassword(email: "${_email.text}", password: "${_password.text}").then((value){
                //   log("account created");
                // });
                
                //create collection
              //  await  FirebaseFirestore.instance.collection("users").doc().set({"name": "hammad"}).then((value){
              //   log("done");
              //  });

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> curd_op()));

              },
              child: Text('Click Me'),
            ),
          ),
        ],
      ),
    );
  }
}
