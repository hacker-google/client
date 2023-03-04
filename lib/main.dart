import 'package:flutter/material.dart';
import '../views/widgets/navbar/_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Crime Space'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // adjust the size of the text
            Text(
              'HALO DEK!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // logo image with url
            Image(
              image: NetworkImage(
                  'https://img.okezone.com/content/2022/11/08/337/2703497/5-fakta-bripda-tito-polisi-songong-dalang-penyerangan-rumah-sakit-main-perempuan-hingga-mabuk-mabukan-h7G3XX6BYz.jpg'),
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
