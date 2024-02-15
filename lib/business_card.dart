import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Business Card',
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Stack(alignment: Alignment.center, children: [
              CircleAvatar(
                radius: 102,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/elnemr.jpg'),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Ahmed Elnemr',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.phone),
                    ),
                    Text(
                      '01011904241',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.mail),
                    ),
                    Expanded(
                      child: Text(
                        'ahmedgamaltiger12345@gmail.com',
                        style: TextStyle(fontSize: 20),
                        overflow: TextOverflow.ellipsis, // overflow
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
