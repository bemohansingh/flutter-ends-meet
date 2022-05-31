class  Category {
  final String name;
  final String id;
  final String parentId;
  final String pic;
  final String desc;

  Category({required this.name, required this.id,required this.parentId,required this.pic,required this.desc});

  Category.fromJson(Map<String, dynamic> json)
      : name = json['name_en'],
        id = json['id'],
        parentId = json['parent_id'],
        pic = json['pic'],
        desc = json['description_en'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'id': id,
  };
}