import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:share_store/screens/list_productentry.dart';
import 'package:share_store/screens/login.dart';
import 'package:share_store/screens/productentry_form.dart';
import 'package:share_store/screens/menu.dart';

// Model untuk item homepage dengan atribut name dan icon
class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

// Kelas untuk menampilkan tombol card dengan icon dan text
class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    Color backgroundColor;
    if (item.name == "Lihat Daftar Produk") {
      backgroundColor = Colors.cyan.shade700;
    } else if (item.name == "Tambah Produk") {
      backgroundColor = Colors.cyan.shade800;
    } else if (item.name == "Logout") {
      backgroundColor = Colors.cyan.shade900;
    } else {
      backgroundColor = Theme.of(context).colorScheme.secondary; // Default
    }

    return Material(
      color: backgroundColor,
      // color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
            );

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup EntryFormPage.
            Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const ProductEntryFormPage()));
          }

          else if (item.name == "Lihat Daftar Produk") {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const ProductEntryPage()
                  ),
              );
          }

          else if (item.name == "Logout") {
              final response = await request.logout(
                  // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                  "http://127.0.0.1:8000/auth/logout/");
              String message = response["message"];
              if (context.mounted) {
                  if (response['status']) {
                      String uname = response["username"];
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("$message Sampai jumpa, $uname."),
                      ));
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                  } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(message),
                          ),
                      );
                  }
              }
          }
        },

        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}