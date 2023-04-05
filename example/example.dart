import 'package:files_scanner_android/files_scanner_android.dart';

void main() {
  FileScanner.getFilesByExtension(".", [".mp4"]).then((value) => print(value));
  FileScanner.getAllDirectoryAndFileinDirectory(".")
      .then((value) => print(value));
  FileScanner.getAllFilesOfDirectory(
    ".",
  ).then((value) => print(value));
  FileScanner.getAllDirectoryinDirectory(
    ".",
  ).then((value) => print(value));
}
