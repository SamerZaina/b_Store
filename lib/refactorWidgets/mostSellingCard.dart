import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostSellingCard extends StatelessWidget {
  const MostSellingCard({
    super.key,
    required String imagePath,
    required String title,
    required String itemName,
    required String newPrice,
    required String prevPrice,
    bool like  = true


  }):
      _imagePath = imagePath,
  _prevPrice = prevPrice,
  _title = title,
  _itemName = itemName,
  _newPrice = newPrice,
  _like = like
      ;

  final String _imagePath ;
  final String _title ;
  final String _itemName ;
  final String _newPrice ;
  final String _prevPrice ;
  final bool _like  ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [


              SizedBox(
                width: 200,
                height: 150,
                child: Card(
                  margin: const EdgeInsets.all(0),
                    elevation: 0,
                    color: const Color(0xFFFAFAFA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(_imagePath,)
                ),
              ),

              SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(right:15 ,top: 15),
                  child: Align
                    (
                      alignment:Alignment.topRight,
                      child: Icon(
                        Icons.favorite ,
                        color: _like == true ? const Color(0xFFF45959) : const Color(0xFFC0C0C0),
                        size: 18,)),
                ),
              )

            ],
          ),
          const SizedBox(height: 3,),

          Text(_title,
            style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF586BCA),
                fontWeight: FontWeight.w600
            ),),
          const SizedBox(height: 4,),

          Text(_itemName,
            style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF1B2A3B),
                fontWeight: FontWeight.w600
            ),),

          const SizedBox(height: 4,),
          Row(

            children: [
              Text(_newPrice,
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

        ],
      ),
    );
  }
}