class Partner {
  Partner(
    this.logo,
    this.name, {
    this.address,
    this.phone,
    this.facebook,
    this.instagram,
    this.discount,
    this.segments,
  });

  Partner.fromJson(Map<String, dynamic> json)
      : logo = json[Partner.logoKey] as String,
        name = json[Partner.nameKey] as String,
        address = json[Partner.addressKey] as String?,
        phone = json[Partner.phoneKey] as String?,
        facebook = json[Partner.facebookKey] as String?,
        instagram = json[Partner.instagramKey] as String?,
        discount = json[Partner.discountKey] as String?,
        segments = json[Partner.segmentsKey] as String?;

  static const key = 'partner';
  static const logoKey = 'logo';
  static const nameKey = 'name';
  static const addressKey = 'address';
  static const phoneKey = 'phone';
  static const facebookKey = 'facebook';
  static const instagramKey = 'instagram';
  static const discountKey = 'discount';
  static const segmentsKey = 'segments';

  String logo;
  String name;
  String? address;
  String? phone;
  String? facebook;
  String? instagram;
  String? discount;
  String? segments;

  Map<String, dynamic> toJson() => {
        Partner.logoKey: logo,
        Partner.nameKey: name,
        Partner.addressKey: address,
        Partner.phoneKey: phone,
        Partner.facebookKey: facebook,
        Partner.instagramKey: instagram,
        Partner.discountKey: discount,
        Partner.segmentsKey: segments,
      };
}
