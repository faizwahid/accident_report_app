import 'package:flutter/material.dart';




class team extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Color color = Theme.of(context).primaryColor;



    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        '''
           MUHAMMAD ANIQ AIMAN BIN 
           RUSLI (2021102629)
           MUHAMMAD FAIZ FARHAN BIN 
           ABDUL WAHID (2021101951)
           MUHAMMAD DANIAL BIN JAFRI          
           (2021124147)
           AMIRUDDIN MUKMIN BIN 
           ZOLKFLE (2021125848)      
        '''
      ),

    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: ListView(
          children: [
            Image.asset(
              'images/team.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection
          ],
        ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Team Members',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      /*3*/
    ],
  ),
);


