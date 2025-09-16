import 'package:b_store/Outboarding/outboarding.dart';
import 'package:b_store/Singinout/recoveraccount.dart';
import 'package:b_store/Singinout/signup.dart';
import 'package:b_store/appEnd/emptyChart.dart';
import 'package:b_store/appEnd/orderSucess.dart';
import 'package:b_store/bnScreen/bnScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Singinout/singin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
        ,
      theme: ThemeData(
        appBarTheme: AppBarTheme(

          iconTheme: const IconThemeData(
            size: 12,
            color:  Color(0xFF586BCA)
          ),
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF586BCA)
          )
        ),

        scaffoldBackgroundColor: Colors.white,

        textTheme: TextTheme(


          headlineLarge: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1B2A3B)
          ),

            
            bodyMedium: GoogleFonts.poppins(
                fontSize: 16,
              fontWeight: FontWeight.w300,
              color: const Color(0xFF1B2A3B)
            ),

          bodyLarge: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF1B2A3B)
          )


        ),

        inputDecorationTheme: InputDecorationTheme(


          prefixIconColor: const Color(0xFF707070),

          suffixIconColor: const Color(0xFF707070),

          hintStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF707070)
          ),

          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey.shade300),
            
          ),
          
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFF586BCA))
            
          )

        ),
        
        


        elevatedButtonTheme:ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF586BCA),
            fixedSize: const Size(double.maxFinite, 50),
            foregroundColor: Colors.white,
            textStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)

              
            )

          ),

        )


      ),


      initialRoute: 'outboarding_screen',
      routes: {
          'outboarding_screen' : (context) => const Outboarding(),
        'signin_screen' : (context) => const Singin(),
        'signup_screen' : (context) => const Signup(),
        'bn_screen' : (context) => const Bnscreen(),
        'recoveraccount_screen' : (context) => const Recoveraccount(),
        'orderSucess_screen' : (context) => const OrderSucess(),
        'emptyChart_screen' : (context) => const Emptychart(),


    }
    );

  }
}

