import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

 String _text1 = '' ;
 String _text2 = '' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45,horizontal: 41),
        child: Column(
          children: [
            Image.asset('Images/Logo.png'),
            const Spacer(),
            TextField(
              onChanged: (value){
                setState(() {
                  _text1 = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Email',

               suffixIcon: Visibility(
                 // ignore: prefer_is_not_empty
                 visible: !_text1.trim().isEmpty,
                   child: const Icon(Icons.check,
                     color: const Color(0xFF00BB1A),)),
               prefixIcon: const Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: 20,),

            TextField(
              onChanged: (value){
                setState(() {
                  _text2 = value;
                });
              },
              decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  suffixIcon: Visibility(
                    visible:!_text2.trim().isEmpty ,
                      child: const Icon(Icons.check,
                        color: Color(0xFF00BB1A),)),
                  prefixIcon: const Icon(Icons.phone_iphone_outlined)
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

            const SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, 'signin_screen');
            }, child: const Text('Create an account')),
            const Spacer(),

            TextButton(onPressed: (){
              Navigator.pushReplacementNamed(context, 'signin_screen');
            }, child: Text("Already have account?",
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
