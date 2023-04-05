## Example

![Example](https://github.com/ravitaak/files_scanner_android/blob/master/example/screenshots/example.png)
## Give the permissions
```
        <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
        <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
```

```
import 'package:files_scanner_android/files_scanner_android.dart';

void main() {
    // . is the path you need to enter the proper path like - example -  '/storage/emulated/0/Download/YoutubeDownloader'
   FileScanner.getFilesByExtension(".", [".mp4"]).then((value) => print(value));
  FileScanner.getAllDirectoryAndFileinDirectory(".").then((value) => print(value));
  FileScanner.getAllFilesOfDirectory(".", ).then((value) => print(value));
  FileScanner.getAllDirectoryinDirectory(".", ).then((value) => print(value));
}
```