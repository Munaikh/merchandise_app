import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GateWayPage extends StatelessWidget {
  GateWayPage({super.key});

  final String code = '123456789';
  final String status = 'PENDING';
  // final String status = 'DONE';
  // final String status = 'CANCELLED';

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
    return FutureBuilder(
      //TODO: Change the duration later
      future: Future.delayed(Duration(seconds: 0)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return StreamBuilder<dynamic>(
              stream: Future.delayed(Duration(seconds: 4)).asStream(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return FutureBuilder(
                      future: Future.delayed(Duration(seconds: 5)),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          Navigator.pop(context);
                        }
                        return Scaffold(
                          appBar: AppBar(
                            title: Text('Done'),
                          ),
                          body: Center(
                            // done
                            child: Lottie.network(
                              'https://assets10.lottiefiles.com/datafiles/sDi8S3t9mRlEH6q/data.json',
                              repeat: false,
                              height: 300,
                            ),
                            // error
                            // child: Lottie.network(
                            //   'https://assets7.lottiefiles.com/packages/lf20_qpwbiyxf.json',
                            //   height: 300,
                            //   repeat: false,
                            // ),
                          ),
                        );
                      });
                } else {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text('Payment'),
                    ),
                    body: Center(
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
                                    data: code,
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
                                      onPressed: () {},
                                      icon: Icon(Icons.copy),
                                    ),
                                    Text(
                                      code,
                                      style:
                                          Theme.of(context).textTheme.headline6,
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: getColor(status),
                                ),
                                child: Text(
                                  status.toLowerCase(),
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                5,
                                (index) => Container(
                                  width: 60,
                                  height: 60,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(10),
                                  // child: Text('A'),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://ui-avatars.com/api/?name=Abdullah'),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
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
                              foregroundColor: Theme.of(context)
                                  .colorScheme
                                  .onErrorContainer,
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
                    ),
                  );
                }
              });
        } else {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
