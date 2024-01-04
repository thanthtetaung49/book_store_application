import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:share_plus/share_plus.dart';

class PdfScreen extends StatefulWidget {
  final String path;
  final String title;
  const PdfScreen({super.key, required this.path, required this.title});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () async {
              final pdf = await rootBundle.load(widget.path);
              final buffer = pdf.buffer;
              Share.shareXFiles([
                XFile.fromData(
                  buffer.asUint8List(
                    pdf.offsetInBytes,
                    pdf.lengthInBytes,
                  ),
                  name: "pdf file",
                  mimeType: 'application/pdf',
                )
              ],
                subject: "Sharing ${widget.title}"
              );
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SfPdfViewer.asset(widget.path),
    );
  }
}
