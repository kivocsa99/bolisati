import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PdfScreen extends HookWidget {
  final PDFDocument? url;
  const PdfScreen({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: PDFViewer(showPicker: false, document: url!)),
    );
  }
}
