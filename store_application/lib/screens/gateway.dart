import 'package:bot_toast/bot_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../models/account/account.dart';
import '../models/quttaiatGateway/quttaiatGateway.dart';

// ignore: must_be_immutable
class GateWayPage extends StatefulWidget {
  GateWayPage({super.key, required this.quttaiatGateway});

  QuttaiatGateway quttaiatGateway;

  @override
  State<GateWayPage> createState() => _GateWayPageState();
}

class _GateWayPageState extends State<GateWayPage> {
  // final String status = 'DONE';
  Color getColor(String status) {
    switch (status) {
      case 'PENDING':
        return Colors.orange[300]!.withOpacity(0.8);
      case 'DONE':
        return Colors.green[300]!.withOpacity(0.8);
      case 'CANCELLED':
        return Colors.red[300]!.withOpacity(0.8);
      default:
        return Colors.grey[300]!.withOpacity(0.8);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection('quttaiatGateway')
            .doc(widget.quttaiatGateway.id)
            .snapshots(),
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error = ${snapshot.error}');
          }

          if (snapshot.hasData) {
            var output = snapshot.data;

            if (output == null) {
              return SizedBox();
            }
            final data = QuttaiatGateway.fromJson(output.data()!);

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrettyQr(
                            data: data.id,
                            elementColor:
                                Theme.of(context).colorScheme.onSurface,
                            size: 150,
                            roundEdges: true,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () async {
                                await Clipboard.setData(ClipboardData(
                                    text: widget.quttaiatGateway.id));
                                BotToast.showText(
                                    text: 'Copy ${widget.quttaiatGateway.id}');
                              },
                              icon: Icon(Icons.copy),
                            ),
                            SelectableText(
                              data.id,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Quttia Status:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: getColor(data.status),
                        ),
                        child: Text(
                          data.status.toLowerCase(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Total: ${data.totalPrice} KD',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Per person: ${data.totalPrice / data.numberOfUser} KD',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(data.accounts.length, (index) {
                        final userId = data.accounts[index];

                        return StreamBuilder<
                            DocumentSnapshot<Map<String, dynamic>>>(
                          stream: FirebaseFirestore.instance
                              .collection('users')
                              .doc(userId)
                              .snapshots(),
                          builder: ((context, snapshot) {
                            if (snapshot.hasError) {
                              return Text('Errror');
                            }

                            if (snapshot.hasData) {
                              var output = snapshot.data!.data();

                              final data = Account.fromJson(output!);

                              return Container(
                                width: 60,
                                height: 60,
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                // child: Text('A'),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://ui-avatars.com/api/?name=${data.email}'),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              );
                            }

                            return SizedBox();
                          }),
                        );
                      }),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Cancel'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.errorContainer,
                      foregroundColor:
                          Theme.of(context).colorScheme.onErrorContainer,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                    ),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                ],
              ),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}
