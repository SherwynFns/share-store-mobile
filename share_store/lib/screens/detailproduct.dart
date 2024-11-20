import 'package:flutter/material.dart';
import 'package:share_store/models/product_entry.dart';

class DetailProductPage extends StatelessWidget {
  final ProductEntry product;

  const DetailProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Product',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.cyan, // Set AppBar background color to cyan
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView( // Make the body scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.shopping_basket, // Icon representing the product
              size: 100, // Icon size
              color: Colors.cyan, // Set icon color to cyan
            ),
            
            const SizedBox(height: 10),
            Text(
              product.fields.nama, 
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan, // Set text color to cyan
              ),
            ),

            const SizedBox(height: 5),
            Text(
              "Stok: ${product.fields.stok}", 
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.cyanAccent, // Set text color to cyanAccent
              ),
            ),

            const SizedBox(height: 10),
            Text(
              "Harga: Rp${product.fields.harga}", 
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal, // Set price text color to teal
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Deskripsi", 
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                color: Colors.cyan, // Set description title color to cyan
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.fields.deskripsi,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.blueGrey, // Set description text color to blueGrey
              ),
            ),
          ],
        ),
      ),
    );
  }
}
