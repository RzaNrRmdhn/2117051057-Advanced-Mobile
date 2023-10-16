import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justduit/components/gridview.dart';
import 'package:justduit/components/listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // const String nama = 'LeMillion';
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi',
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          'Lemillion',
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Platinum Member',
                            style: Theme.of(context).textTheme.labelLarge
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'member since 08/23',
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 12.0
                            )
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Balances',
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Rp4.000.000',
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const GridViewFeature(),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Promo',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    TextButton(
                      onPressed: (){}, 
                      child: Text(
                        'See All',
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                const ListViewPromo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



