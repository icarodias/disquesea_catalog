import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf_file/database.dart';

const PdfColor backgroundColor = PdfColors.blue300;
void main() async {
  // Get and Create List Style

  final pdf = pw.Document();

  pdf.addPage(
    pw.MultiPage(
      pageTheme: const pw.PageTheme(margin: pw.EdgeInsets.zero),
      header: _buildHeader,
      footer: _buildFooter,
      build: (context) => _buildContent(context),
    ),
  ); // Page

  final file = File("../catalog.pdf");
  await file.writeAsBytes(await pdf.save());
}

pw.Widget _buildHeader(pw.Context context) {
  return pw.Container(
    color: backgroundColor,
    height: 105,
    child: pw.Padding(
      padding: const pw.EdgeInsets.all(16),
      child: pw.Center(
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.end,
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            pw.Text(
              'Disque Sea',
              style: pw.TextStyle(
                fontWeight: pw.FontWeight.bold,
                fontStyle: pw.FontStyle.italic,
                fontSize: 42,
                color: PdfColors.white,
              ),
            ),
            pw.Text(
              'Frutos do Mar',
              style: pw.TextStyle(
                fontWeight: pw.FontWeight.bold,
                fontStyle: pw.FontStyle.italic,
                fontSize: 16,
                color: PdfColors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

pw.Widget _buildFooter(pw.Context context) {
  final whatsappIcon = pw.MemoryImage(
    File("../assets/whatsapp.png").readAsBytesSync(),
  );
  final mastercardIcon = pw.MemoryImage(
    File("../assets/mastercard.png").readAsBytesSync(),
  );
  final visaIcon = pw.MemoryImage(
    File("../assets/visa.png").readAsBytesSync(),
  );
  final hipercardIcon = pw.MemoryImage(
    File('../assets/hipercard.png').readAsBytesSync(),
  );
  final amexIcon = pw.MemoryImage(
    File('../assets/amex.png').readAsBytesSync(),
  );
  return pw.Container(
    color: backgroundColor,
    height: 70,
    child: pw.Padding(
      padding: const pw.EdgeInsets.all(16),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        crossAxisAlignment: pw.CrossAxisAlignment.end,
        children: [
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(
                'Entregamos em domicílio, pedidos via:',
                style: const pw.TextStyle(
                  fontSize: 16,
                  color: PdfColors.white,
                ),
              ),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Container(
                      height: 18, width: 18, child: pw.Image(whatsappIcon)),
                  pw.SizedBox(width: 3),
                  pw.Text(
                    '(85) 99727.7600', //'(XX) XXXXX.XXX',
                    style: const pw.TextStyle(
                      fontSize: 16,
                      color: PdfColors.white,
                    ),
                  ),
                  pw.SizedBox(width: 16),
                  pw.Text(
                    '(85) 3234.2426', //'(XX) XXXX.XXXX',
                    style: const pw.TextStyle(
                      fontSize: 16,
                      color: PdfColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            //mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
            children: [
              pw.Container(
                height: 25,
                width: 25,
                child: pw.Image(mastercardIcon),
              ),
              pw.SizedBox(width: 16),
              pw.Container(
                height: 25,
                width: 25,
                child: pw.Image(visaIcon),
              ),
              pw.SizedBox(width: 16),
              pw.Container(
                height: 25,
                width: 25,
                child: pw.Image(hipercardIcon),
              ),
              pw.SizedBox(width: 16),
              pw.Container(
                height: 25,
                width: 25,
                child: pw.Image(amexIcon),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

List<pw.Widget> _buildContent(pw.Context context) {
  return [
    _table(context, 0),
    _table(context, 1),
    _table(context, 2),
    pw.SizedBox(height: 20),
    _table(context, 3),
    pw.SizedBox(height: 150),
    _table(context, 4),
    _table(context, 5),
    pw.SizedBox(height: 50),
    _table(context, 6),
  ];
}

pw.Widget _table(pw.Context context, int itemType) {
  final db = Database();
  final nameType = db.itemSet[itemType];

  const tableHeaders = ['Nome', 'Preço', 'Quantidade'];

  List<List<dynamic>> listItems = [];
  for (Map<String, dynamic> item in db.items[nameType]!) {
    listItems
        .add([item['name'], item['price'].toStringAsFixed(2), item['amount']]);
  }

  return pw.Padding(
    padding: const pw.EdgeInsets.all(20),
    child: pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.start,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          db.translate(nameType),
          style: pw.TextStyle(
            fontSize: 26,
            fontWeight: pw.FontWeight.bold,
            color: PdfColors.black,
          ),
        ),
        pw.SizedBox(height: 5),
        pw.Table.fromTextArray(
            border: const pw.TableBorder(bottom: pw.BorderSide(width: 0.5)),
            cellAlignment: pw.Alignment.centerLeft,
            headerDecoration: const pw.BoxDecoration(
              borderRadius: pw.BorderRadius.all(pw.Radius.circular(2)),
              color: backgroundColor,
            ),
            headerHeight: 20,
            cellHeight: 25,
            cellAlignments: {
              0: pw.Alignment.centerLeft,
              1: pw.Alignment.center,
              2: pw.Alignment.centerRight
            },
            headerStyle: pw.TextStyle(
              color: PdfColors.white,
              fontSize: 16,
              fontWeight: pw.FontWeight.bold,
            ),
            rowDecoration: const pw.BoxDecoration(
              border: pw.Border(
                bottom: pw.BorderSide(color: PdfColors.grey, width: 0.5),
              ),
            ),
            headers: tableHeaders,
            data: listItems),
        pw.SizedBox(height: 5),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            pw.Text(
              'PREÇOS SUJEITOS A   ALTERAÇÕES.',
              style: const pw.TextStyle(fontSize: 10),
            ),
          ],
        )
      ],
    ),
  );
}
