import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSucess extends StatelessWidget {
  const OrderSucess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset("Images/Illustration.png"),

            const SizedBox(height: 60,),

            Text("Order Success!",
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1B2A3B)
            ),),
            const SizedBox(height: 15,),

            Text("Thank you for ordering,"
                "Your order placed and on the"
                "way to your address.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: const Color(0xFF1B2A3B)
            ),),

            const Spacer(),


            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, 'bn_screen');
                },
                style: ElevatedButton.styleFrom(

                ),
                child: const Text("Back to Home")
            ),

            const SizedBox(height: 50,),



          ],
        ),
      ),
    );
  }
}
