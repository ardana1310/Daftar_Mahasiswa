import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Mahasiswa'),
        ),
        body: StudentList(),
      ),
    );
  }
}

class StudentList extends StatelessWidget {
  final List<Map<String, String>> students = [
    {"name": "Aditya Prima Darmawan", "nim": "STI202102163"},
    {"name": "Trihanggoro", "nim": "STI202102166"},
    {"name": "Dwi Lusiani", "nim": "STI202102170"},
    {"name": "Yudha Abilansyah", "nim": "STI202102172"},
    {"name": "Eli Yuniati", "nim": "STI202102177"},
    {"name": "Hermawan Sutanto", "nim": "STI202102182"},
    {"name": "Adellia Oktaviani", "nim": "STI202102187"},
    {"name": "Munif Saputra", "nim": "STI202102190"},
    {"name": "Fatah Nal Hasan", "nim": "STI202102195"},
    {"name": "Afif Galih", "nim": "STI202102196"},
    {"name": "Tri Deka Rahmawati", "nim": "STI202102198"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(students[index]["name"]!),
            subtitle: Text("NIM: ${students[index]["nim"]!}"),
          ),
        );
      },
    );
  }
}