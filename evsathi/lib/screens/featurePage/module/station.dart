class station {
  String name;
  String avail;
  String rating;
  String imgPath;
  String chargeType;
  String descrip;

  station({
    required this.name,
    required this.avail,
    required this.rating,
    required this.chargeType,
    required this.imgPath,
    required this.descrip,
  });

  String get _name => name;
  String get _avail => avail;
  String get _rating => rating;
  String get _chargeType => chargeType;
  String get _imgPath => imgPath;
  String get _descrip => descrip;
}
