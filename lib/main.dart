
// first page

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(255, 237, 237, 237),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 MyWidget(icon: Icons.monitor_weight_outlined, text: "Current Weight", unit: "kgs"),
//                 SizedBox(height: 12,),
//                 MyWidget(icon: Icons.monitor_weight_outlined, text: "Target Weight", unit: "kgs"),
//                 SizedBox(height: 12,),
//                 MyWidget(icon: Icons.straight, text: "Height", unit: "cms",),
//               ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({
//     super.key,
//     required this.icon,
//     required this.text,
//     required this.unit,
//   });
//   final IconData icon;
//   final String text;
//   final String unit;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//     width: 315,
//     height: 48,
//     decoration: const BoxDecoration(
//       borderRadius: BorderRadius.all(
//         Radius.circular(
//           15
//       ),
//       ),
//       color: Colors.white,
//       boxShadow: [
//       BoxShadow(
//         color: Color.fromARGB(255, 224, 223, 223),
//         spreadRadius: 10,
//         blurRadius: 18,
//         offset: Offset(10, 10),
//       )
//       ]
//     ),
   
//     child: Padding(
//       padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//       child:  Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//            Icon(
//               icon,
//           ), 


//            Container(
//              child: Text(
//               text,
//               textAlign: TextAlign.left,
//               style: const TextStyle(
//                 fontSize: 14,
//                 fontFamily: "Poppins",
//                 fontWeight: FontWeight.w400,
//                 color: Colors.black
//               ),
//                      ),
//            ),
          
//            const SizedBox(width: 20,),
//           const SizedBox(
            
//                   width: 83,
//                   height: 48, // или другая ширина по вашему выбору
//                   child: TextField(
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.end,
//                     textAlignVertical: TextAlignVertical.center,
//                     decoration: InputDecoration(
//                       hintText: '---',
//                      alignLabelWithHint: true,
//                       hintStyle: TextStyle(
//                         fontSize: 14,
//                         fontFamily: "Poppins",
//                         fontWeight: FontWeight.w600,
//                       ),
//                       border: InputBorder.none,
//                     )
//                   ),
                
//           ),
//            Text(
//             unit,
//             style:  const TextStyle(
//               fontSize: 14,
//               fontFamily: "Poppins",
//               fontWeight: FontWeight.w600,
//             ),
//             ),
//         ],
//       ),
//     ),
    
//     );
//   }
// }




// Second page

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SizedBox(
                  width: 275,
                  height: 64,
                  child: Text(
                  "What’s your strength level?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyLittleContainer(
                  text: "Very Low",
                  ),
            MyLittleContainer(
                  text: "Low",
                  ),
            MyLittleContainer(
                  text: "Medium",
                  isSelected: true,
                  ),
            MyLittleContainer(
                  text: "High",
            ),
            MyLittleContainer(
                  text: "Very High",
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: 287,
                  height: 66,
                  child: Text(
                  "This means you can do 16+ push ups, 3+ pull ups, 3+ single leg squats, and a 1+ minute plank.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 135, 135, 135),
                  ),
                  ),
                ),

              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 32,
                width: 275,
                child: Text(
                  "...and you have",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  )
              ),
              SizedBox(
                height: 20,
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyWidget(
                    level: "Beginner", numOfMonths: "0-6", isSelected: true,
                  ),
                  MyWidget(
                    level: "Intermediate", numOfMonths: "6-18",
                  ),
                  MyWidget(
                    level: "Advanced", numOfMonths: "18+", 
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "strength training experience in the last 5 years.",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 135, 135, 135),
                ),
              )

            ],
              
          ),
        ),
      ),
    );
  }
}

class MyLittleContainer extends StatelessWidget {
  const MyLittleContainer({
    super.key,
    required this.text,
    this.isSelected = false,
    });

    final String text;
    final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected? const Color.fromARGB(255, 153, 208, 154) : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
        border: Border.all(
          color: Colors.white, 
          width: 2, 
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
            
          ),
        ),
      ),
    );
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.level,
    required this.numOfMonths,
    this.isSelected = false,
    });

    final String level;
    final String numOfMonths;
    final bool isSelected;


  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 98,
      height: 108,
      decoration: BoxDecoration(
        border: isSelected? Border.all(color: Colors.green, width: 3) : Border.all(color: Colors.white, width: 3),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10
          ),
          
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            level,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            numOfMonths,
            style: const TextStyle(
              fontSize: 24,
              fontFamily: "Poppins",
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          
          const Text(
            "months",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),

    );
  }
}
