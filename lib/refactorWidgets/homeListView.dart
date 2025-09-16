import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    super.key,
    required  String title
  }):
  _title = title ;

  final String _title ;


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
              color: const Color(0xFF586BCA).withOpacity(0.25)
          )
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(_title,
            style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF586BCA)
            ),),
        ),

      ),
    );
  }
}