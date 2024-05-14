// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true),
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.blue,
            )),
        title: Text(
          "FaceBook",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat,
                color: Colors.blue,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Center(
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/img/p.jpeg"),
                  radius: 45,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        )),
                    Text(
                      "Osamah",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        color: Colors.blue,
                      )),
                  Text(
                    "osamah@gmail.com",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2.0,
                        color: Colors.black),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 60,
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100],
                  ),
                  child: TextField(
                    decoration: (InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.blue,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.blue,
                        ),
                        labelText: "Enter your password")),
                    obscureText: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
