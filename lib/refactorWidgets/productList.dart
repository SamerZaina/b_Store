import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required String imagePath ,
    required String title,
    required String currentPrice,
    required String prevPrice,
    bool visible = true
  }):
      _title = title ,
  _imagePath = imagePath ,
  _currentPrice = currentPrice,
  _prevPrice = prevPrice,
  _visible = visible
  ;

  final String _imagePath ;
  final String _title ;
  final String _currentPrice ;
  final String _prevPrice ;
  final bool _visible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(height: 120,width: 120,
                  child: Image.asset(_imagePath,
                    fit: BoxFit.contain,),),
              ),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_title,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xFF1B2A3B),
                        fontWeight: FontWeight.w600
                    ),),
                  const SizedBox(height: 5,),
                  Row(

                    children: [
                      Text(_currentPrice,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF8FA1B4),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),),
                      const SizedBox(width: 10,),
                      Text(_prevPrice, style: GoogleFonts.poppins(
                        color: const Color(0xFFF45959),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: const Color(0xFFF45959),
                        decorationThickness: 2,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),)
                    ],),
                  const SizedBox(height: 5,),
                  Visibility(
                    visible: _visible,
                    child: Container(
                      height: 35,
                      width: 106,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFFEAEAEA),
                      ),

                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.add,size: 15,),
                            color: const Color(0Xff586BCA),
                          ),

                          Text("1",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFF1B2A3B),
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            ),),

                          IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.remove,size: 18,
                                color: Color(0Xff586BCA),)
                          )
                        ],
                      ),
                    ),
                  )


                ],
              ),



            ],
          ),
          Divider(indent: 30,endIndent: 30,color: const Color(0xFF000000).withOpacity(0.1),)
        ],
      ),

    );
  }
}