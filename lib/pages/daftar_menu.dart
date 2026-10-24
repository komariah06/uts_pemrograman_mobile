import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_text.dart';
import 'detail_menu.dart';
import 'tambah_menu.dart';

class DaftarMenuPage extends StatefulWidget {
  const DaftarMenuPage({super.key});

  @override
  State<DaftarMenuPage> createState() => _DaftarMenuPageState();
}

class _DaftarMenuPageState extends State<DaftarMenuPage> {
  List<Map<String, dynamic>> daftarMenu = [
    {'nama': 'Nasi Goreng Spesial', 'harga': 15000},
    {'nama': 'Mie Ayam Bakso', 'harga': 12000},
    {'nama': 'Ayam Geprek Sambal Ijo', 'harga': 18000},
    {'nama': 'Es Teh Manis Jumbo', 'harga': 5000},
    {'nama': 'Tahu Walik Crispy', 'harga': 10000},
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1), //warna krem
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5722), //deep orange
        centerTitle: true,
        title: const CustomText(
          text: 'Menu Kantin',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomText(
              text: 'Pilih menu favoritmu hari ini',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.deepOrange.shade800,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: daftarMenu.length,
              itemBuilder: (context, index) {
                final menu = daftarMenu[index];
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(
                      Icons.fastfood_rounded,
                      color: Colors.orange,
                      size: 32,
                    ),
                    title: CustomText(
                      text: menu['nama'] as String,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle: CustomText(
                      text: 'Rp ${menu['harga']}',
                      fontSize: 14,
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                    trailing: const Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // ketika item ditekan, buka halmaan detail denagn Get.to()
                      Get.to(
                        () => DetailMenuPage(
                          nama: menu['nama'] as String,
                          harga: menu['harga'] as int,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFF5722),
        onPressed: () async {
          // tombol membuka halaman tambah menu menggunakan get.to()
          final hasil = await Get.to(() => const TambahMenuPage());
          if (hasil != null) {
            setState(() {
              daftarMenu.add(hasil);
            });
          }
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
