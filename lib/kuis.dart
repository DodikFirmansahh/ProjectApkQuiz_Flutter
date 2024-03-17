import 'package:flutter/material.dart';
import 'package:project1_flutter/jawaban.dart';
import 'package:project1_flutter/pertanyaan.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object>> pertanyaan;
  final int pertanyaanIndex;
  final void Function(int) klikJawaban; // Menggunakan tipe fungsi yang sesuai

  Kuis({
    required this.pertanyaan,
    required this.pertanyaanIndex,
    required this.klikJawaban,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Pertanyaan(pertanyaan[pertanyaanIndex]['teksPertanyaan'] as String),
        ...(pertanyaan[pertanyaanIndex]['teksJawaban']
                as List<Map<String, Object>>)
            .map((jawaban) {
          return Jawaban(() => klikJawaban(jawaban['score'] as int),
              jawaban['teks'] as String);
        }).toList(),
      ],
    );
  }
}
