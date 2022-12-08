import 'package:embroidery_app/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}

// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextField(
//             controller: _controller,
//           ),
//           OutlinedButton(
//             onPressed: () {
//               insert( _controller.text);
//               print("dfghjkb");
//             },
//             child: Text("save"),
//           )
//         ],
//       ),
//     );
//   }

//   Future<void> insert(String _controller) async {
//     await FirebaseFirestore.instance
//         .collection("employee")
//         .add({'eid': _controller});
//   }
// } 
