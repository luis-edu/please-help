import 'dart:convert';
import 'package:firebase1/entity/image.entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MovieEntity {
  String Id;
  String Title;
  String Categories;
  String TypeMovie;
  String Year;
  String Description;
  String Country;
  String Time;
  String Trailer;
  List<ImageEntity> ScreenShots;
  ImageEntity ScreenShot;
  DateTime CreatedIn;
  DateTime ModifiedIn;

  MovieEntity(
      {this.Id,
      this.Title,
      this.Categories,
      this.TypeMovie,
      this.Year,
      this.Description,
      this.Country,
      this.Time,
      this.Trailer,
      this.ScreenShots,
      this.ScreenShot,
      this.CreatedIn,
      this.ModifiedIn});

  MovieEntity.fromMap(Map map)
      : this.Id = map['Id'],
        this.Title = map['Title'],
        this.Categories = map['Categories'],
        this.TypeMovie = map['TypeMovie'],
        this.Year = map['Year'],
        this.Description = map['Description'],
        this.Country = map['Country'],
        this.Time = map['Time'],
        this.Trailer = map['Trailer'],
        this.ScreenShot = ImageEntity.fromMap(map['ScreenShot']),
        this.ScreenShots = map['ScreenShots'].map<ImageEntity>((item) {
          return ImageEntity.fromMap(item);
        }).toList(),
        this.CreatedIn = map['CreatedId'].toDate(),
        this.ModifiedIn = map['ModifiedIn'].toDate();

  MovieEntity.fromSnapshotJson(DocumentSnapshot snapshot)
      : this.Id = snapshot.id,
        this.Title = snapshot.get('Title'),
        this.Categories = snapshot.get('Categories'),
        this.TypeMovie = snapshot.get('TypeMovie'),
        this.Year = snapshot.get('Year'),
        this.Description = snapshot.get('Description'),
        this.Country = snapshot.get('Country'),
        this.Time = snapshot.get('Time'),
        this.Trailer = snapshot.get('Trailer'),
        this.ScreenShot = ImageEntity.fromMap(snapshot.get('ScreenShot')),
        this.ScreenShots = snapshot.get('ScreenShots').map<ImageEntity>((item) {
          return ImageEntity.fromMap(item);
        }).toList(),
        this.CreatedIn = snapshot.get('CreatedIn').toDate(),
        this.ModifiedIn = snapshot.get('ModifiedIn').toDate();

  static Map<String, dynamic> stringToMap(String s) {
    Map<String, dynamic> map = json.decode(s);
    return map;
  }

  toJson() {
    return {
      'Id': this.Id,
      'Title': this.Title,
      'Categories': this.Categories,
      'TypeMovie': this.TypeMovie,
      'Year': this.Year,
      'Description': this.Description,
      'Country': this.Country,
      'Time': this.Time,
      'Trailer': this.Trailer,
      'ScreenShot':
          this.ScreenShot == null ? ImageEntity() : this.ScreenShot.toJson(),
      'ScreenShots': this.ScreenShots == null
          ? List<ImageEntity>()
          : this.ScreenShots.map((e) => e.toJson()).toList(),
      'CreatedIn': this.CreatedIn == null ? DateTime.now() : this.CreatedIn,
      'ModifiedIn': this.ModifiedIn == null ? DateTime.now() : this.ModifiedIn
    };
  }
}
