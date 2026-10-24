import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_text.dart';

class DetailMenuPage extends StatelessWidget {
  final String nama;
  final int harga;

  const DetailMenuPage({super.key, required this.nama, required this.harga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5722),
        title: const CustomText(
          text: 'Detail Menu',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.restaurant_menu,
                    size: 80,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 20),
                  // menampilkan nama menu
                  CustomText(
                    text: nama,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  // menampilkan harga menu
                  CustomText(
                    text: 'Rp $harga',
                    fontSize: 20,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 32),
                  // tombol kembali ke daftar
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF5722),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const CustomText(
                      text: 'Kembali',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
