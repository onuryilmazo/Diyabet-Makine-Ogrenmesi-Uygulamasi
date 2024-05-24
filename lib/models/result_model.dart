class ResultModel {
  late int? outcome;
  late String? prediction;

  ResultModel({required this.outcome, required this.prediction});

  ResultModel.fromJson(Map<String, dynamic> json) {
    outcome = json['outcome'];
    prediction = json['prediction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['outcome'] = this.outcome;
    data['prediction'] = this.prediction;
    return data;
  }
}
