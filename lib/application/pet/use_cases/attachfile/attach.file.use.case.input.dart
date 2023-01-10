import 'dart:io';

class PetAttachFileUseCaseInput {
  final File? file;
  final int? orderid;
  final String? token;

  PetAttachFileUseCaseInput({this.file, this.orderid, this.token});
}
