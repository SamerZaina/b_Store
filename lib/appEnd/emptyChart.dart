import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Emptychart extends StatelessWidget {
  const Emptychart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset("Images/empty chart.png"),

            const SizedBox(height: 60,),

            Text("Cart is Empty!",
              style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1B2A3B)
              ),),
            const SizedBox(height: 15,),

            Text("Let’s find something special for you.",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color(0xFF1B2A3B)
              ),),

            const Spacer(),


            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, 'orderSucess_screen');
                },
                style: ElevatedButton.styleFrom(

                ),
                child: const Text("Start Shopping")
            ),

            const SizedBox(height: 50,),



          ],
        ),
      ),
    );
  }
}
