import 'package:flutter/material.dart';
import 'package:share_store/screens/list_productentry.dart';
import 'package:share_store/screens/menu.dart';
// TODO: Impor halaman ProductEntryFormPage jika sudah dibuat
import 'package:share_store/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // TODO: Bagian drawer header
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Share Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Best Quality Products!",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // TODO: Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Product'),
            // Bagian redirection ke ProductEntryFormPage
            onTap: () {
              /*
              TODO: Buatlah routing ke ProductEntryFormPage di sini,
              setelah halaman ProductEntryFormPage sudah dibuat.
              */
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductEntryFormPage(),
                  ));
            },
          ),

          ListTile(
              leading: const Icon(Icons.add_reaction_rounded),
              title: const Text('Daftar Product'),
              onTap: () {
                  // Route menu ke halaman mood
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                  );
              },
          ),
        ],
      ),
    );
  }
}