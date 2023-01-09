class MedicalPlaceOrderUseCaseInput {
  final String? token;
  final int? insuranceid;
  final int? maritalstatus;
  final String? name;
  final String? birthday;
  final String? startdate;
  final String? enddate;

  MedicalPlaceOrderUseCaseInput(
      {this.token,
      this.insuranceid,
      this.maritalstatus,
      this.name,
      this.birthday,
      this.startdate,
      this.enddate});
}
