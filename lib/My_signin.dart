import 'package:flutter/material.dart';

class My_signin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MySigninState();

}

class _MySigninState extends State<My_signin>{
  @override
  Widget build(BuildContext context) {
 return Container(
   decoration: BoxDecoration(
     image: DecorationImage(
       image: AssetImage('assets/images/signin.jpg'),
       fit: BoxFit.cover
     )
   ),
   child: Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
     ),
       backgroundColor: Colors.transparent,
       body: Stack(
         children: [
           SingleChildScrollView(
             child: Container(
               padding: const EdgeInsets.only(left: 215, top: 5),
               child: const Text(
                 "Sign Up..",
                 style: TextStyle(
                     fontSize: 40,
                     fontWeight: FontWeight.w700,
                     color: Colors.black54),
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.only(
                 top: MediaQuery.of(context).size.height * 0.20,
                 left: 35,
                 right: 35),
             child: Column(
               children: [
                 Row(
                 children: [
                   SizedBox(
                     width: 160,
                     child: TextField(
                       decoration: InputDecoration(
                           hintText: "First name",
                           fillColor: Colors.grey.shade50,
                           filled: true,
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10))),
                     ),
                   ),
                   SizedBox(
                     width: 20,
                   ),
                   SizedBox(
                     width: 160,
                     child: TextField(
                       decoration: InputDecoration(
                           hintText: "Last name",
                           fillColor: Colors.grey.shade50,
                           filled: true,
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10))),
                     ),
                   ),
                 ],
                 ),
                 SizedBox(height: 30,),
                 TextField(
                   decoration: InputDecoration(
                       hintText: "Email",
                       fillColor: Colors.grey.shade50,
                       filled: true,
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10))),
                 ),
                 SizedBox(
                   height: 30,
                 ),
                 TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                       hintText: "Password",
                       fillColor: Colors.grey.shade50,
                       filled: true,
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10))),
                 ),
                 SizedBox(
                   height: 30,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       "Sign Up",
                       style: TextStyle(
                           fontWeight: FontWeight.w700, fontSize: 27),
                     ),
                     CircleAvatar(
                       radius: 30,
                       backgroundColor: Colors.black54,
                       child: IconButton(
                         color: Colors.white,
                         icon: Icon(Icons.arrow_forward),
                         onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> My_signin()));
                         },
                       ),
                     )
                   ],
                 ),
                 SizedBox(
                   height: 30,
                 ),
                 // Row(
                 //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 //   children: [
                 //     TextButton(
                 //         onPressed: () {},
                 //         child: Text(
                 //           "Sign Up",
                 //           style: TextStyle(
                 //               decoration: TextDecoration.underline,
                 //               fontSize: 20,
                 //               color: Colors.black54
                 //           ),
                 //         )),
                 //     TextButton(
                 //         onPressed: () {},
                 //         child: Text(
                 //           "Forget Password",
                 //           style: TextStyle(
                 //               decoration: TextDecoration.underline,
                 //               fontSize: 20,
                 //               color: Colors.brown
                 //           ),
                 //         )),
                 //   ],
                 // )
               ],
             ),
           ),
         ],
       )),
 );
  }

}