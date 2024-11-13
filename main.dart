import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery Wining Number is 4')),
            const SizedBox(height: 20,),
            Container(
              height: x == 4 ? 600 : 250,
              decoration:  BoxDecoration(
                color: x == 4 ? Colors.yellow.withOpacity(.9) : Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: x == 4 ?  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.done, color: Colors.green, size: 35,),
                    const SizedBox(height: 15,),
                    Text('Congratulations you won the lottery, your number is $x', textAlign: TextAlign.center,),
                  ],
                ) :


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, color: Colors.red, size: 35,),
                    const SizedBox(height: 15,),
                    Text('Better Luck Next Time Your Number is $x\n Try Again', textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

            x = random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(x > 5 ? Icons.place : Icons.refresh),
        ),
      ),
    );
  }
}














































// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int x = 14;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My First App'),
//         ),
//         body: SafeArea(
//             child: Center(
//                 child: Text(
//                   x.toString(),
//                   style: TextStyle(fontSize: 50),
//                 ))),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             x++;
//             setState(() {
//
//             });
//
//             print(x.toString());
//           },
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
