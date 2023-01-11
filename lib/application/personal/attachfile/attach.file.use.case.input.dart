import 'dart:io';

class PersonalAttachFileUseCaseInput {
  final File? file;
  final int? orderid;
  final String? token;

  PersonalAttachFileUseCaseInput({this.file, this.orderid, this.token});
}
