import 'dart:io';

class MedicalAttachFileUseCaseInput {
  final File? file;
  final int? orderid;
  final String? token;

  MedicalAttachFileUseCaseInput({this.file, this.orderid, this.token});
}
