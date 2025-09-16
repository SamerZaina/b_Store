import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Recoveraccount extends StatelessWidget {
  const Recoveraccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(padding: const EdgeInsets.only(left: 41),
        child: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, 'signin_screen');
        }, icon: const Icon(Icons.arrow_back_ios))
          ,),
        title: const Text("Back"),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45,horizontal: 41),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Align(
              alignment: Alignment.topLeft,
              child: Text("Recover",style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: const Color(0xFF1B2A3B)
              ),),
            ),
        Align(
          alignment: Alignment.topLeft,
          child: Text("your account",style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: const Color(0xFF1B2A3B)
          ),),
        ),
            const Spacer(),


            const TextField(

              decoration: InputDecoration(
                hintText: 'Enter email or phone number ',



              ),
            ),
            const SizedBox(height: 20,),



            ElevatedButton(onPressed: (){}, child: const Text('Next')),

            const Spacer()



          ],
        ),
      ),
    );
  }
}
