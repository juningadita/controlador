import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  void decrement (){
    debugPrint('Decrement');
  
  }
  void increment (){
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container (
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sorveteria.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pode entrar!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),

            const Padding(padding: EdgeInsets.all(40),
              child: Text('0',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  child: const Text('Saiu', style: TextStyle(color: Colors.black, fontSize: 16,),),
                ),
                const SizedBox(width: 32,),
                TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  child: const Text('Entrou', style: TextStyle(color: Colors.black, fontSize: 16,),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
