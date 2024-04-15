import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Supply Guard",
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blue[600],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.blue[600],
              constraints: const BoxConstraints(
                minHeight: 100
              ),
              child: Image.asset("assets/medical_check.jpg"),
              // padding: EdgeInsets.all(20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                    margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Card(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                        child: Column(children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(
                              bottom: 30,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Welcome to",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                const Text(
                                  "SupplyGuard",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                Text(
                                  "Healthcare 4.0 App",
                                  style: TextStyle(
                                      color: Colors.blue[600],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/login");
                                    },
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size.fromHeight(40),
                                        backgroundColor: Colors.blue[600]),
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15.0),
                                    )),
                                OutlinedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/signup");

                                    },
                                    style: OutlinedButton.styleFrom(
                                      minimumSize: const Size.fromHeight(40),
                                    ),
                                    child: const Text(
                                      "Signup",
                                      style: TextStyle(fontSize: 15.0),
                                    ))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
