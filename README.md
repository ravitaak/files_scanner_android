###  Using this package we can easily can find any files or directory in a Directory.

#### Features
        - Scan Files in Directory
        - Scan Audio Files in Directory
        - Scan Video Files in Directory
        - Scan Image Files in Directory
        - Scan Any Type of Files in Directory
        - Get All Directory From a Directory/Path

#### Platforms Supported

- Android

## Usage

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

### Contributors

[Ravi Taak](https://www.linkedin.com/in/ravitaak/)



## Having Issues

File the Issue [here](https://github.com/ravitaak/files_scanner_android/issues)

## Looking to contribute to this package:

**🤘🏻 Great!**
 Fork the [Repo](https://github.com/ravitaak/files_scanner_android), Update Code, Write a meaningful Commit Message, Send a PR. That's all you need to Contribute.
