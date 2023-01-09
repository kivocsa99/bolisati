import 'dart:io';

class MedicalAttachFileUseCaseInput {
  final List<File>? files;
  final int? orderid;
  final String? token;

  MedicalAttachFileUseCaseInput({this.files,this.orderid, this.token});
}
