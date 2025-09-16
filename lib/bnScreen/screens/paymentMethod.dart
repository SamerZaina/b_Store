import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bnScreen.dart';

class Paymentmethod extends StatelessWidget {
  const Paymentmethod({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: ListView(

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
                      color: const Color(0xFF586BCA),)),
                Transform.translate(offset: const Offset(-20, 0)
                  ,child: TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();

                      }, child: Text("Back",style: GoogleFonts.poppins(
                      fontSize: 16
                  ),)) ,),
                const Spacer(),
                PopupMenuButton<String>(
                    color:Colors.white,
                    iconColor: const Color(0xFF586BCA),
                    iconSize: 24,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    position: PopupMenuPosition.under,


                    itemBuilder: (context) =>[
                      PopupMenuItem(
                        height: 30,
                        child: Text("Make Default",
                          style: GoogleFonts.poppins(
                              color: const Color(0xFF1B2A3B),
                              fontWeight: FontWeight.w500,
                              fontSize: 12
                          ),),

                      ),
                      PopupMenuItem(
                          height: 1,
                          child: Divider(
                            color: Colors.black.withOpacity(0.1),)
                      ),

                      PopupMenuItem(
                        height: 30,
                        child: Text("Remove Card",
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFF45959),
                              fontWeight: FontWeight.w500,
                              fontSize: 12
                          ),),
                        onTap: (){
                          showDialog(
                              barrierColor: Colors.black.withOpacity(0.6),
                              context: context,
                              
                              builder: (BuildContext context){
                                return AlertDialog(


                                  backgroundColor: Colors.white,
                                  title: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text("Are you sure to remove"
                                      " this card?",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1B2A3B)
                                    ),),
                                  ),

                                  actions: [
                                    Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,

                                      children: [
                                        ElevatedButton(onPressed: (){}, child: Text("Cancel",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF586BCA)
                                        ),),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(135, 50),
                                          backgroundColor: Colors.white
                                        )),
                                        ElevatedButton(onPressed: (){}, child: const Text("Remove"),
                                style: ElevatedButton.styleFrom(
                                fixedSize: const Size(135, 50)))
                                      ],
                                    )
                                  ],
                                );
                              });
                        },

                      )
                    ]

                ),

              ],
            ),

            Image.asset('Images/visaCard.png'),
            Text('Cardholder Name',
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

                    hintText: 'Cardholder Name',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF1B2A3B).withOpacity(.4),
                        fontSize: 12
                    )
                ),
              ),
            ),


            Text('Card Number',
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

                    hintText: '0000 0000 0000',
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
                    Text('cvv\\cvc',
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

                              hintText: '000',
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
                    Text('Exp. Date',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF1B2A3B)
                      ),),

                    Row(

                      children: [
                        SizedBox(
                          width: 70,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 20),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(

                                  hintText: '00',
                                  hintStyle: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1B2A3B).withOpacity(.4),
                                      fontSize: 12
                                  )
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        SizedBox(
                          width: 70,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 20),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(

                                  hintText: '00',
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
                    )
                  ],
                ),



              ],)

            ,








            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
                final bnscreenState = context.findAncestorStateOfType<BnscreenState>();
                bnscreenState?.pushReplacementToEmptyCart();
              }, child: const Text("Submit Order")),
            )

          ],
        ),
      ),
    );
  }
}
