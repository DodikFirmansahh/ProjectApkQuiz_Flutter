import 'package:flutter/material.dart';
import 'package:project1_flutter/jawaban.dart';
import 'package:project1_flutter/kuis.dart';
import 'package:project1_flutter/pertanyaan.dart';
import 'package:project1_flutter/hasil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _pertanyaanIndex = 0;
  var _totalScore = 0;
  void _klikJawaban(int score) {
    _totalScore += score;
    // Mengubah nama fungsi menjadi klikJawaban
    print('Total Score');
    setState(() {
      _pertanyaanIndex++;
    });
    print(_totalScore);

    if (_pertanyaanIndex < _pertanyaan.length) {
      print('Masih Ada Soal');
    } else {
      print('Soal Sudah dijawab semua');
    }
  }

  void CobaLagi() {
    setState(() {
      _pertanyaanIndex = 0;
      _totalScore = 0;
    });
  }

  var _pertanyaan = [
    {
      'teksPertanyaan': '1. Apa yang dimaksud dengan Android SDK?',
      'teksJawaban': [
        {'teks': 'Software Design Kit', 'score': 0},
        {'teks': 'Software Development Kit', 'score': 20},
        {'teks': 'System Development Kit', 'score': 0}
      ]
    },
    {
      'teksPertanyaan':
          '2. Platform yang digunakan untuk pengembangan aplikasi mobile berbasis iOS adalah?',
      'teksJawaban': [
        {'teks': 'Android Studio', 'score': 0},
        {'teks': 'Xcode', 'score': 0},
        {'teks': 'Visual Studio', 'score': 20}
      ]
    },
    {
      'teksPertanyaan':
          '3. Bahasa pemrograman yang umum digunakan untuk pengembangan aplikasi Android adalah?',
      'teksJawaban': [
        {'teks': 'Swift', 'score': 0},
        {'teks': 'Kotlin', 'score': 20},
        {'teks': 'Objective-C', 'score': 0}
      ]
    },
    {
      'teksPertanyaan':
          '4. Apa yang dimaksud dengan APK dalam konteks pengembangan aplikasi mobile?',
      'teksJawaban': [
        {'teks': 'Android Programming Kernel', 'score': 0},
        {'teks': 'Android Program Kit', 'score': 0},
        {'teks': 'Android Package', 'score': 20}
      ]
    },
    {
      'teksPertanyaan':
          '5. Komponen utama dalam arsitektur Model-View-Controller (MVC) dalam pengembangan aplikasi mobile adalah?',
      'teksJawaban': [
        {'teks': 'Layouts', 'score': 0},
        {'teks': 'Fragments', 'score': 0},
        {'teks': 'Views', 'score': 20}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Aplikasi Quiz',
            style: TextStyle(
                color: Colors.white), // Mengatur warna teks menjadi putih
          ),
          backgroundColor:
              Colors.blue, // Mengatur warna latar belakang app bar menjadi biru
        ),
        body: _pertanyaanIndex < _pertanyaan.length
            ? Kuis(
                klikJawaban: _klikJawaban,
                pertanyaan: _pertanyaan,
                pertanyaanIndex: _pertanyaanIndex,
              )
            : Hasil(_totalScore, CobaLagi),
      ),
    );
  }
}
