import 'package:flutter/material.dart';

class KatalogResepPage extends StatelessWidget {
  const KatalogResepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Resep'),
      ),
      body: const Center(
        child: Text(
          'Halaman Modul Katalog Resep',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}