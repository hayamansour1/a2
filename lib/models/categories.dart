class Categories {
  int? idCategory;
  String? strCategory;
  String? strCategoryThumb;
  String? strCategoryDescriptio;

  static Object? length;

  Categories({
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescriptio
    });

  factory Categories.fromJson(Map json){
    return Categories(
      idCategory: json["idCategory"],
      strCategory: json["strCategory"],
      strCategoryThumb: json["strCategoryThumb"],
      strCategoryDescriptio: json["strCategoryDescriptio"]
       );
  }

  static void add(Categories categories) {}

  // Categories.fromMap(Map<String, dynamic> map){
  //   idCategory = intparse(map['idCategory']);
  //   strCategory = (map['strCategory']);
  //   strCategoryThumb = (map['strCategoryThumb']);
  //   strCategoryDescriptio = (map['strCategoryDescriptio']);
  // }
}