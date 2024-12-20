import 'package:flutter/material.dart';
import 'package:share_store/screens/login.dart';
import 'package:share_store/screens/menu.dart';
// TODO: Impor halaman ProductEntryFormPage jika sudah dibuat
import 'package:share_store/screens/productentry_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Share Store',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.cyan,
          ).copyWith(secondary: Colors.cyan),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
