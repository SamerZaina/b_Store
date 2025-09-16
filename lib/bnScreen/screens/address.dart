import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool _chekVal = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
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
                  const Icon(Icons.more_vert_outlined,color: Color(0xFF586BCA),)

                ],
              ),
            ),
            Text('Name',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF1B2A3B)
            ),),

            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(

                  hintText: 'Name',
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF1B2A3B).withOpacity(.4),
                    fontSize: 12
                  )
                ),
              ),
            ),


            Text('Address',
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF1B2A3B)
              ),),

            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(

                    hintText: 'Address',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF1B2A3B).withOpacity(.4),
                        fontSize: 12
                    )
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Address',
                   style: GoogleFonts.poppins(
                       fontSize: 12,
                       fontWeight: FontWeight.w400,
                       color: const Color(0xFF1B2A3B)
                   ),),

                 SizedBox(
                   width: 135,
                   child: Padding(
                     padding: const EdgeInsets.only(top: 10,bottom: 20),
                     child: TextField(
                       obscureText: false,
                       decoration: InputDecoration(

                           hintText: 'Address',
                           hintStyle: GoogleFonts.poppins(
                               fontWeight: FontWeight.w400,
                               color: const Color(0xFF1B2A3B).withOpacity(.4),
                               fontSize: 12
                           )
                       ),
                     ),
                   ),
                 ),
               ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ZIP Code',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF1B2A3B)
                    ),),

                  SizedBox(
                    width: 135,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 20),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(

                            hintText: 'ZIP Code',
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF1B2A3B).withOpacity(.4),
                                fontSize: 12
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),



            ],)

,

            Text('Mobile Number',
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF1B2A3B)
              ),),

            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(

                    hintText: 'Mobile Number',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF1B2A3B).withOpacity(.4),
                        fontSize: 12
                    )
                ),
              ),
            ),

      Row(
        children: [
          Checkbox(

            value: _chekVal,
              checkColor: const Color(0xFF00BB1A),

            fillColor: MaterialStateProperty.resolveWith<Color>((states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.white; // Light fill when checked
              }
              return Colors.transparent;
            }),
            side: MaterialStateBorderSide.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return const BorderSide(
                    color: Colors.black12, width: 1
                ); // Blue border when checked
              }
              return const BorderSide(
                  color: Colors.black12, width: 1); // Grey border when unchecked
            }),
              activeColor: Colors.black12,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),

              onChanged: (val){

            setState(() {
              _chekVal = val!;

            });

          },
          ),

          Text('Set as default address',
            style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF1B2A3B)
            ),),
        ],
      ),
      const Spacer(),




            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(onPressed: (){}, child: const Text("Next")),
            )

          ],
        ),
      ),
    );
  }
}
