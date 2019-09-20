class Partner {
  static const KEY = 'partner';
  static const LOGO_KEY = 'logo';
  static const NAME_KEY = 'name';
  static const ADDRESS_KEY = 'address';
  static const PHONE_KEY = 'phone';
  static const FACEBOOK_KEY = 'facebook';
  static const INSTAGRAM_KEY = 'instagram';
  static const DISCOUNT_KEY = 'discount';
  static const SEGMENTS_KEY = 'segments';

  String logo;
  String name;
  String address;
  String phone;
  String facebook;
  String instagram;
  String discount;
  String segments;

  Partner(this.logo, this.name,
      {this.address,
      this.phone,
      this.facebook,
      this.instagram,
      this.discount,
      this.segments});

  Partner.fromJson(Map<String, dynamic> json)
      : logo = json[Partner.LOGO_KEY],
        name = json[Partner.NAME_KEY],
        address = json[Partner.ADDRESS_KEY],
        phone = json[Partner.PHONE_KEY],
        facebook = json[Partner.FACEBOOK_KEY],
        instagram = json[Partner.INSTAGRAM_KEY],
        discount = json[Partner.DISCOUNT_KEY],
        segments = json[Partner.SEGMENTS_KEY];

  Map<String, dynamic> toJson() => {
        Partner.LOGO_KEY: logo,
        Partner.NAME_KEY: name,
        Partner.ADDRESS_KEY: address,
        Partner.PHONE_KEY: phone,
        Partner.FACEBOOK_KEY: facebook,
        Partner.INSTAGRAM_KEY: instagram,
        Partner.DISCOUNT_KEY: discount,
        Partner.SEGMENTS_KEY: segments
      };
}
