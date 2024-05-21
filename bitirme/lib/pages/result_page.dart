import 'package:flutter/material.dart';
import 'package:bitirme/generated/l10n.dart';
import 'package:bitirme/models/result_model.dart';

class ResultPage extends StatelessWidget {
  ResultModel? response;
  ResultPage({
    Key? key,
    required this.response,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    S.of(context).testResult,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ": ${response!.outcome.toString()}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 70),
              Row(
                children: [
                  Text(
                    S.of(context).diseaseStatus,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ": ${response!.prediction.toString()}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
