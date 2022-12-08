import 'package:flutter/material.dart';

// b() {
//   return Padding(
//     padding: const EdgeInsets.all(20.0),
//     child: NeoPopButton(

//       color: Color.fromARGB(255, 30, 48, 68),
//       bottomShadowColor:
//           ColorUtils.getVerticalShadow(Colors.blueGrey).toColor(),
//       rightShadowColor:
//           ColorUtils.getHorizontalShadow(Colors.blueGrey).toColor(),
//       animationDuration: kbuttonDuration,
//       depth: kButtonDepth,

//       onTapUp: () {},
//       border:
//        Border.all(
//         color: const Color.fromARGB(232, 23, 109, 158),
//         width: 2,
//        ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Text("Create Account", style: TextStyle(color: Colors.white)),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// l() {
//   return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: NeoPopButton(
//         color: const Color.fromARGB(255, 30, 48, 68),
//         bottomShadowColor:
//             ColorUtils.getVerticalShadow(Colors.blueGrey).toColor(),
//         rightShadowColor:
//             ColorUtils.getHorizontalShadow(Colors.blueGrey).toColor(),
//         grandparentColor:
//             ColorUtils.getVerticalShadow(Color.fromARGB(255, 28, 126, 175))
//                 .toColor(),    
//         animationDuration: kbuttonDuration,
//         depth: kButtonDepth,
//         onTapUp: () {},
//         onTapDown: () => HapticFeedback.vibrate(),
//         border: Border.all(
//           color: const Color.fromARGB(232, 23, 109, 158),
//           width: 2,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text("Skip Login", style: TextStyle(color: Colors.white)),
//             ],
//           ),
//         ),
//       ));
// }
// l() {
//   return GestureDetector(
//     onTap: () {},
//     child: Container(
//       width: 280,
//       height: 50,
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [
//             // Colors.white,
//             Color.fromARGB(255, 101, 141, 137),
//             Colors.white,
//             Color.fromARGB(255, 101, 141, 137),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(15),
//         border: Border.all(color: Colors.white),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black12,
//             offset: Offset(5, 5),
//             blurRadius: 10,
//           )
//         ],
//       ),
//       child: const Center(
//         child: Text(
//           'Skip Login',
//           style: TextStyle(
//             color: Colors.black,

//             fontSize: 20,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     ),
//   );
// }

 Future b() async{
  return GestureDetector(
    onTap: () {
     
    },
    child: Container(
      width: 280,
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            // Colors.white,
            Color.fromARGB(255, 101, 141, 137),
            Colors.white,
            Color.fromARGB(255, 101, 141, 137),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(5, 5),
            blurRadius: 10,
          )
        ],
      ),
      child: const Center(
        child: Text(
          'Skip Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}

s(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 20,
  );
}
