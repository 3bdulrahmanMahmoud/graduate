/*import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded to: $savePath');
  } else {
    throw Exception('Failed to download file');
  }
}

void main() {
  String fileUrl = 'https://example.com/file.pdf';
  String savePath = '/path/to/save/file.pdf';

  downloadFile(fileUrl, savePath);
}*/
