import 'package:flutter/material.dart';

class PantryTrackerPage extends StatelessWidget {
  const PantryTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantry Tracker'),
      ),
      body: const Center(
        child: Text(
          'Halaman Modul Pantry Tracker',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}