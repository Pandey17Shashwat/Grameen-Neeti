import 'package:flutter/material.dart';
import 'package:grameen_neeti/homepage.dart';
// import 'package:grameen_neeti/login.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(220, 100, 150, 0.5),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 290, 50, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset("assets/logo.jpeg"),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(270, 2)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Homepage()));
              },
              child: const Text(
                'Lets Go',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
