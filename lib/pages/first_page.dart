import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bitirme/pages/data_page.dart';

import '../generated/l10n.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  bool buttonControl = false;
  double sum = 0;
  String sumString = "";
  double finalSum = 0;

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pageWidth / 25),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: pageWidth / 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: pageHeight / 15,
                      ),
                      Text(
                        S.of(context).hello,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: pageHeight / 15,
                      ),
                      TextFormField(
                          controller: _controller1,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            filled: true,
                            hintStyle: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(1000))),
                            fillColor: Colors.white,
                            hintText: S.of(context).enterWeight,
                          )),
                      SizedBox(
                        height: pageHeight / 10,
                      ),
                      TextFormField(
                          controller: _controller2,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration:  InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2110))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2110))),
                            filled: true,
                            hintStyle: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                            fillColor: Colors.white,
                            hintText: S.of(context).enterHeight,
                          )),
                      SizedBox(
                        height: pageHeight / 10,
                      ),
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(backgroundColor: Colors.white),
                          onPressed: () {
                            setState(() {
                              sum = (double.parse(_controller1.text) /
                                  ((double.parse(_controller2.text) / 100) *
                                      (double.parse(_controller2.text) / 100)));
                              sumString = sum.toStringAsFixed(2);
                              finalSum = double.parse(sumString);

                              buttonControl = true;
                            });
                          },
                          child: Text(
                            S.of(context).calculate,
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          )),
                      SizedBox(
                        height: pageHeight / 20,
                      ),
                      Row(
                        children: [
                          Text(
                            S.of(context).bmiResult,
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            ": ${finalSum.toString()}",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: pageHeight / 20,
                      ),
                      buttonControl == true &&
                              _controller1.text.isNotEmpty &&
                              _controller2.text.isNotEmpty
                          ? Column(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () {
                                      setState(() {});
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DataPage(
                                                    weightIndex: finalSum,
                                                  )));
                                    },
                                    child: Text(
                                      S.of(context).nextPage,
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    )),
                                SizedBox(
                                  height: pageHeight / 20,
                                ),
                              ],
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
