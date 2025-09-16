import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Singin extends StatelessWidget {
  const Singin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45,horizontal: 41),
        child: Column(
          children: [
            Image.asset('Images/Logo.png'),
            const Spacer(),
            const TextField(

              decoration: InputDecoration(
                hintText: 'Email',


                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: 20,),



            const TextField(
              obscureText: true,
              decoration: InputDecoration(

                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.visibility_outlined)
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, 'recoveraccount_screen');
              }, child: Text("Forgot Password?"
                ,style: GoogleFonts.poppins(
                fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF586BCA)
              ),)),
            ),

            const SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, 'bn_screen');
            }, child: const Text('Sign In')),
            const Spacer(),

            TextButton(onPressed: (){
              Navigator.pushReplacementNamed(context, 'signup_screen');
            }, child: Text("Create an account?",
              style: GoogleFonts.poppins(
                  color: const Color(0xFF586BCA),
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),))
          ],
        ),
      ),
    );
  }
}
