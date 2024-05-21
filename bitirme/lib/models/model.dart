class DiabetModel {
  int? pregnancies;
  int? glucose;
  int? bloodPressure;
  int? skinThickness;
  int? insulin;
  double? bmi;
  double? diabetesPedigreeFunction;
  int? age;

  DiabetModel(
      {this.pregnancies,
      this.glucose,
      this.bloodPressure,
      this.skinThickness,
      this.insulin,
      this.bmi,
      this.diabetesPedigreeFunction,
      this.age});

  DiabetModel.fromJson(Map<String, dynamic> json) {
    pregnancies = json['pregnancies'];
    glucose = json['glucose '];
    bloodPressure = json['blood_pressure'];
    skinThickness = json['skin_thickness '];
    insulin = json['insulin'];
    bmi = json['bmi'];
    diabetesPedigreeFunction = json['diabetes_pedigree_function'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pregnancies'] = this.pregnancies;
    data['glucose '] = this.glucose;
    data['blood_pressure'] = this.bloodPressure;
    data['skin_thickness '] = this.skinThickness;
    data['insulin'] = this.insulin;
    data['bmi'] = this.bmi;
    data['diabetes_pedigree_function'] = this.diabetesPedigreeFunction;
    data['age'] = this.age;
    return data;
  }
}
