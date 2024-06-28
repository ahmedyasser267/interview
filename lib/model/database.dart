import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB{
static  final DB _init=DB._internal();
factory DB()=>_init;
static Database?_database;
DB._internal();
Future<Database?>get database  async {
  if (_database != null)
    return _database!;

  _database = await _initdatabase();
  return _database!;
}


  Future<Database>_initdatabase() async {
    String path=join(await getDatabasesPath(),'interview.dp');
    return await openDatabase(path,
    version: 1,
      onCreate: (dp,version){
      dp.execute(''''
      CREATE TABLE InvoiceDetails(
      lineNo INTEGER ,
      productName TEXT,
      Unit INTEGER,
      price INTEGER,
      quantity FLOAT,
      Total FLOAT,
      expiryDate  DATE,
        )  
      ''');
      dp.execute('''
       CREATE TABLE Unit(
       unitno INTEGER,
       unitname TEXT,     
      ''');

      }

    );



  }
}







