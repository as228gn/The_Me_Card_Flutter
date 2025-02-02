import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 56, 166)),
        useMaterial3: true,
      ),
      home: const LayoutPage(),
    );
  }
}

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Personal Card'),
      ),
       body: Container( 
         padding: const EdgeInsets.all(30),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ImageSection(), TitleSection(), CardSection()],
        ),
        ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage('images/pink.png'),
      radius: 100,
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Anna Ståhlberg',
      style: GoogleFonts.gwendolyn(fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Card(
        child: Column(
          children: [
            const ListTile(
                title: Text(
              'Student, Webbprogrammering LNU',
              style: TextStyle(fontWeight: FontWeight.w500),
            )),
            ListTile(
              title: const Text(
                '070-3339618',
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.purple[200],
              ),
            ),
            ListTile(
              title: const Text('as228gn@student.lnu.se'),
              leading: Icon(
                Icons.email,
                color: Colors.purple[200],
              ),
            ),
            ListTile(
              title: const Text('Linnéuniversitetet'),
              leading: Icon(
                Icons.school,
                color: Colors.purple[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
