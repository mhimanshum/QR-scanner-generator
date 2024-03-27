import 'package:flutter/material.dart';
import 'package:myapp/generate_qr_code.dart';
import 'package:myapp/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QR Code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner and Generator'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ScanQrCode()));
                    },
                  );
                },
                child: const Text('Scan QR Code')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GenerateQrCode()));
                  },
                );
              },
              child: const Text('Generate QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}
