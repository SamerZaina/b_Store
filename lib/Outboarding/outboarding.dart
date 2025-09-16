import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Outboarding extends StatelessWidget {
  const Outboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const SizedBox(height: 1,),
            Column(
              children: [
                Text("Simply",
                  style: Theme.of(context).textTheme.headlineLarge,),

                const SizedBox(height: 13,),
                const Text("Select your photographer"
                    "then go to session!",textAlign: TextAlign.center),
              ],
            ),




            Image.asset('Images/outbording.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, 'signin_screen');
                },
                    // ignore: sort_child_properties_last
                    child: const Text("Sign in"),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(135, 50)
                ),),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, 'signup_screen');
                },
                  child: Text("Sign Up",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF586BCA)
                  ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                      fixedSize: const Size(135, 50),
                    side: const BorderSide(
                      color: Color(0xFF586BCA),

                    ),


                  ),),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
