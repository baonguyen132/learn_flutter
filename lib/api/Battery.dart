class Battery {
  String id, name_battery, size, shape, image;
  int point;

  Battery({
    required this.id,
    required this.name_battery,
    required this.size,
    required this.shape,
    required this.image,
    required this.point
  });

  String getId() {
    return id ;
  }
  String getNameBattery() {
    return name_battery ;
  }
}

