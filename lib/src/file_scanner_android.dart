import 'dart:io';

class FileScanner {
  // static final List fileFormat = ['.mp4', '.mov', '.m4v', '.3gpp'];
  // path - example -  '/storage/emulated/0/Download/YoutubeDownloader'

  static Future<List<File>> getFilesByExtension(path, fileFormat) async {
    List<File> files = [];
    Directory? directory = Directory(path);
    if (await directory.exists()) {
      List<FileSystemEntity> entities = directory.listSync(recursive: true);
      for (var entity in entities) {
        if (entity is File &&
            fileFormat.any((element) => entity.path.endsWith(element))) {
          files.add(entity);
        }
      }
    }
    return files;
  }

  static Future<List<File>> getAllFilesOfDirectory(path) async {
    List<File> files = [];
    Directory? directory = Directory(path);
    if (await directory.exists()) {
      List<FileSystemEntity> entities = directory.listSync(recursive: true);
      for (var entity in entities) {
        if (entity is File) {
          files.add(entity);
        }
      }
    }
    return files;
  }

  static Future<List<Directory>> getAllDirectoryinDirectory(path) async {
    List<Directory> files = [];
    Directory? directory = Directory(path);
    if (await directory.exists()) {
      List<FileSystemEntity> entities = directory.listSync(recursive: true);
      for (var entity in entities) {
        if (entity is Directory) {
          files.add(entity);
        }
      }
    }
    return files;
  }

  static Future<List<FileSystemEntity>> getAllDirectoryAndFileinDirectory(
      path) async {
    Directory? directory = Directory(path);
    if (await directory.exists()) {
      return directory.listSync(recursive: true);
    }
    return [];
  }
}
