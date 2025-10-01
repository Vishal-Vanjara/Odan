class SportModel {
  List<Sports>? sports;

  SportModel({this.sports});

  SportModel.fromJson(Map<String, dynamic> json) {
    if (json['sports'] != null) {
      sports = <Sports>[];
      json['sports'].forEach((v) {
        sports!.add(new Sports.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sports != null) {
      data['sports'] = this.sports!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sports {
  String? idSport;
  String? strSport;
  String? strFormat;
  String? strSportThumb;
  String? strSportThumbBW;
  String? strSportIconGreen;
  String? strSportDescription;

  Sports(
      {this.idSport,
        this.strSport,
        this.strFormat,
        this.strSportThumb,
        this.strSportThumbBW,
        this.strSportIconGreen,
        this.strSportDescription});

  Sports.fromJson(Map<String, dynamic> json) {
    idSport = json['idSport'];
    strSport = json['strSport'];
    strFormat = json['strFormat'];
    strSportThumb = json['strSportThumb'];
    strSportThumbBW = json['strSportThumbBW'];
    strSportIconGreen = json['strSportIconGreen'];
    strSportDescription = json['strSportDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idSport'] = this.idSport;
    data['strSport'] = this.strSport;
    data['strFormat'] = this.strFormat;
    data['strSportThumb'] = this.strSportThumb;
    data['strSportThumbBW'] = this.strSportThumbBW;
    data['strSportIconGreen'] = this.strSportIconGreen;
    data['strSportDescription'] = this.strSportDescription;
    return data;
  }
}