import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TernateSpot'),
      ),
      body: const Center(
        child: Text(
          'Selamat datang di TernateSpot!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}