import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';

class SaveLocal {
  final List feedList;

  SaveLocal({this.feedList});

  Future<File> get fileFeed async{
    Directory dir = await getApplicationDocumentsDirectory();
    File file = File(dir.path + "/feeds.json");
    if(!file.existsSync()){
      await file.writeAsString(json.encode([]));
    }

    return file;
  }

  read() async {
    final File file = await fileFeed;

    String data = file.readAsStringSync();

    return json.decode(data);
  }

  save(data) async {
    final File file = await fileFeed;

    file.writeAsString(json.encode(data));
  }
   



}