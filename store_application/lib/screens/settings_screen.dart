import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_application/models/quttaiatGateway/quttaiatGateway.dart';
import 'package:store_application/screens/gateway.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var numberOfPeople = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number of people'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        numberOfPeople--;
                      });
                    },
                    icon: Icon(
                      Icons.remove,
                    )),
                Text(numberOfPeople.toString()),
                IconButton(
                    onPressed: () {
                      setState(() {
                        numberOfPeople++;
                      });
                    },
                    icon: Icon(
                      Icons.add,
                    ))
              ],
            ),
            ElevatedButton(
              onPressed: () async {
                final docQuttia = FirebaseFirestore.instance
                    .collection('quttaiatGateway')
                    .doc();

                final quttiaObj = QuttaiatGateway(
                  ownerId: 'enCfDp0pmpX64V4Qb8g2sodfDqG2',
                  companyId: 'store1',
                  id: docQuttia.id,
                  numberOfUser: numberOfPeople,
                );

                // Creating & writing
                await docQuttia.set(quttiaObj.toJson());

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GateWayPage(quttaiatGateway: quttiaObj)),
                );
              },
              child: Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
