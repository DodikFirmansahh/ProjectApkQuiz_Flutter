import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final VoidCallback pilihJawaban;
  final String teksJawab; // Perubahan: Gunakan tipe data String untuk teksJawab

  Jawaban(this.pilihJawaban, this.teksJawab);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 8.0), // Atur jarak vertikal antara tombol
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: pilihJawaban,
              child: Text(teksJawab),
            ),
          ),
        ],
      ),
    );
  }
}
