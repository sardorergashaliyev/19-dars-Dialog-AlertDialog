import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: ((context) {
                        return Dialog(
                          child: SizedBox(
                            height: 288,
                            width: 335,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      height: 30,
                                      width: 30,
                                      child: const Image(
                                        image: AssetImage('assets/Icons.png'),
                                      ),
                                    ),
                                    Container(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Icon(Icons.close),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'Warning!',
                                    style: TextStyle(
                                      color: Color(0xff334D8F),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 59),
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'This transaction cannot be reversed. Are you sure you want to delete the template?',
                                    style: TextStyle(
                                        color: Color(0xff334D8F),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  height: 49,
                                  width: 178,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff334D8F),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Center(
                                    child:  Text(
                                      'Yes, I am sure',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    );
                  },
                  child: const Text('Dialog'))
            ]),
      ),
    );
  }
}
