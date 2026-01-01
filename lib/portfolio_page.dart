import 'package:flutter/material.dart';
import 'package:my_portfolio/color_palette.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gradientLeft, AppColors.gradientRight],
            begin: Alignment.topLeft,
            stops: [0.0, 0.6],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20.0,),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColors.accentYellow,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.fitHeight,
                  ),
                                ),  
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: AppColors.navyMid,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [BoxShadow(color: Colors.black26)],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: AppColors.cardBackground,
      //   selectedItemColor: AppColors.primary,
      //   unselectedItemColor: AppColors.accent,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
      //     BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contact'),
      //   ],
      // ),
    );
  }
}
