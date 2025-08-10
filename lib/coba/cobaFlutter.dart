// import 'package:flutter/material.dart';

// class TugasEnam extends StatefulWidget {
//   const TugasEnam({super.key});

//   @override
//   State<TugasEnam> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<TugasEnam> {
//   bool lihatSelengkapnya = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tugas 6"),
//       ),
//       drawer: Drawer(
//         child: Column(
//           children: [
//             Icon(Icons.menu)
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.menu),
//       ),
//       body: Stack(
//         children: [
//           Column(
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 width: 400,
//                 height: 749,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/background.jpg"),
//                     fit: BoxFit.cover
//                   )
//                 ),
//               ),
              
//             ],
//           ),
//           Column(
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/jiso.jpg"),
//                     fit: BoxFit.cover 
//                   )
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(15),
//                 child: ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       lihatSelengkapnya = !lihatSelengkapnya;
//                     });
//                   },
//                   child: Text("data"),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
    
//   }
// }