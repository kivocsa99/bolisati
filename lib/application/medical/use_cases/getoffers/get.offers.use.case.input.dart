class MedicalGetOffersUseCaseInput {
  final String? token;
  final int? age;
  final int? genderid;
  final int? insurancetype;

  MedicalGetOffersUseCaseInput({
    this.token,
    this.insurancetype,
    this.age,
    this.genderid,
  });
}
