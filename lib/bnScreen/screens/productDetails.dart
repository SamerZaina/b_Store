import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    padding: const EdgeInsets.all(0)
                    ,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,

                      size: 16,
                      color: Color(0xFF586BCA),)),
                Transform.translate(offset: const Offset(-20, 0)
                  ,child: TextButton(
                      onPressed: (){
                  Navigator.of(context).pop();

                      }, child: Text("Back",style: GoogleFonts.poppins(
                      fontSize: 16
                  ),)) ,),
                const Spacer(),
              const Card(
                color: Color(0xFFEAEAEA),
                  elevation: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,color: Color(0xFFF45959),
                    ),
                  )
              ),


              ],
            ),
            SizedBox(
              height: 220,
                width: double.maxFinite,
                child: Image.asset('Images/Black Rope Bracelet edited .png',)
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Black",style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1B2A3B)
                    ),),
                    Text('Rope Bracelet',style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1B2A3B)
                    ),)
                  ],
                ),

                Text('\$29',style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1B2A3B)
                ),)
              ],
            ),

            Divider(color: Colors.black.withOpacity(0.15),),
            
            Text("Inspired by Scandinavian design and engineering, the ontpellier watch is a quality-built accessory for everyday wear. This handmade timepiece has crystal quartz movement, blue crocodile-embossed leather strap and silver water resistant stainless steel case.  Whether you slip it on solo or with a stack of  Grand Frank bangles, the result is timeless.",
            style: GoogleFonts.poppins(
              color: const Color(0xFF1B2A3B).withOpacity(0.6),
              fontWeight: FontWeight.w400,
              fontSize: 14
            ),),
            
            ElevatedButton(onPressed: (){}, child: const Text("Add to Cart"))
            
          ],
        ),
      ),
    );

  }
}
