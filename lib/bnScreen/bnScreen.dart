import 'package:b_store/bnScreen/screens/Home.dart';
import 'package:b_store/bnScreen/screens/chart.dart';
import 'package:b_store/bnScreen/screens/favourite.dart';
import 'package:b_store/bnScreen/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bnscreen extends StatefulWidget {
  const Bnscreen({super.key});

  @override
  State<Bnscreen> createState() => BnscreenState();
}

class BnscreenState extends State<Bnscreen> {
  int _cureentIndex = 0 ;
  // ignore: unused_field
  final List<Widget> _body = [
    Home(),
    const Chart(),
    const Favourite(),
    const Profile()

  ];

  final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _profileNavigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     // body: _body[_cureentIndex],

      body: IndexedStack(
        index: _cureentIndex,
        children: [
          // here only the Home() , we but it inside Navigator , because we will edit it .
      Navigator(
      key:_homeNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (_) => Home());
      },
      ),
          const Chart(),
          const Favourite(),
          Navigator(
            key:_profileNavigatorKey,
            onGenerateRoute: (RouteSettings settings) {
              return MaterialPageRoute(builder: (_) => const Profile());
            },
          ),
        ],

      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,

        onTap: (page){
          setState(() {
            _cureentIndex = page ;
          });
        },
        elevation: 0,
        currentIndex: _cureentIndex,


        selectedItemColor: const Color(0xFF586BCA),
          unselectedItemColor: const Color(0xFFC0C0C0),
          unselectedLabelStyle: GoogleFonts.poppins(
            color: const Color(0xFFC0C0C0),
            fontSize: 12,
            fontWeight: FontWeight.w400
          ),

          selectedLabelStyle:GoogleFonts.poppins(
              color: const Color(0xFF586BCA),
              fontSize: 12,
              fontWeight: FontWeight.w400
          ),
          iconSize: 22,
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person,), label: 'Profile'),


          ]),

    );
  }
  void switchToHome() {
    setState(() {
      _cureentIndex = 0;
    });

  }

  void switchToHomeAndPushAddress(Widget page) {
    setState(() {
      _cureentIndex = 0;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _homeNavigatorKey.currentState?.push(
        MaterialPageRoute(builder: (_) => page),
      );
    });

  }

  void pushReplacementToEmptyCart(){
    Navigator.pushReplacementNamed(context, 'emptyChart_screen');
  }
}
