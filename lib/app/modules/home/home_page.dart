import 'package:cats/app/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CAATS',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: Utils.getPaddingDefault(),
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              width: Utils.displayWidth(context, reducedBy: 50),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                children: [
                  Card(
                    elevation: 9,
                    color: Colors.purple,
                  ),
                  Card(
                    elevation: 9,
                    color: Colors.purple,
                  ),
                  Card(
                    elevation: 9,
                    color: Colors.purple,
                  ),
                  Card(
                    elevation: 9,
                    color: Colors.purple,
                  ),
                  Card(
                    elevation: 9,
                    color: Colors.purple,
                  ),
                  Card(
                    elevation: 9,
                    color: Colors.purple,
                  ),
                  Card(
                    elevation: 9,
                    color: Colors.purple,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
