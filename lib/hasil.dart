import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int _totalScore;
  final VoidCallback cobaLagi;
  Hasil(this._totalScore, this.cobaLagi);

  String get _hasilScore {
    var hasilteks;
    if (_totalScore >= 4) {
      hasilteks = 'nilai A';
    } else if (_totalScore >= 3) {
      hasilteks = 'nilai B';
    } else if (_totalScore >= 2) {
      hasilteks = 'nilai C';
    } else if (_totalScore >= 1) {
      hasilteks = 'nilai D';
    } else {
      hasilteks = 'nilai E';
    }
    return hasilteks;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Center(
            child: Text('Anda Mendapat ' + _hasilScore + '.'),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: TextStyle(color: Colors.blue), // Atur warna teks tombol
          ),
          child: Text('Coba Lagi'),
          onPressed: cobaLagi,
        )
      ],
    );
  }
}
