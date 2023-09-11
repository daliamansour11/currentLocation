

class MapModel{

  late final int id;
  late final String name;
  late final String address;
  late final String city;
  late final int capacity;
  late final bool isVirtualStation;
  late final double latitude ;
  late final double lagitude ;
  late final String zip;
  MapModel({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.capacity,
    required this.isVirtualStation,
    required this.latitude,
    required this.lagitude,
    required this.zip,
});

  MapModel.fromJson(Map<String,dynamic>json){
    id=json['id'];
    name=json['name'];
    address=json['address'];
    city=json['city'];
    capacity=json['capacity'];
    isVirtualStation=json['isVirtualStation'];
    latitude=json['latitude'];
    lagitude=json['lagitude'];
    zip=json['zip'];
  }
  Map<String,dynamic>? toJson(){
    final _data =<String,dynamic>{};
    _data['id']=id;
    _data['name']=name;
    _data['address']=address;
    _data['city']=city;
    _data['capacity']=capacity;
    _data['isVirtualStation']=isVirtualStation;
    _data['latitude']=latitude;
    _data['lagitude']=lagitude;
    _data['zip']=zip;

  }
}