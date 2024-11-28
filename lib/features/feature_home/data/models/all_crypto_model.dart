import 'package:defi_dex/features/feature_home/domain/entities/top_market_coin_entity.dart';

class AllCryptoModel extends TopMarketCoinEntity {
  AllCryptoModel({
    String? message,
    num? type,
    MetaData? metaData,
    List<dynamic>? sponsoredData,
    List<Data>? data,
    dynamic rateLimit,
    bool? hasWarning,
  }) : super(
          message: message,
          type: type,
          metaData: metaData,
          sponsoredData: sponsoredData,
          data: data,
          rateLimit: rateLimit,
          hasWarning: hasWarning,
        );

  factory AllCryptoModel.fromJson(dynamic json) {
    List<Data> dataCoins = [];
    if (json['Data'] != null) {
      json['Data'].forEach((v) {
        dataCoins.add(Data.fromJson(v));
      });
    }

    return AllCryptoModel(
      message: json['Message'],
      type: json['Type'],
      metaData:
          json['MetaData'] != null ? MetaData.fromJson(json['MetaData']) : null,
      sponsoredData: json['SponsoredData'] != null
          ? List<dynamic>.from(json['SponsoredData'].map((x) => x))
          : null,
      data: dataCoins,
      rateLimit: json['RateLimit'],
      hasWarning: json['HasWarning'],
    );
  }
}

class Data {
  Data({
    CoinInfo? coinInfo,
    Raw? raw,
    Display? display,
  }) {
    _coinInfo = coinInfo;
    _raw = raw;
    _display = display;
  }

  Data.fromJson(dynamic json) {
    _coinInfo =
        json['CoinInfo'] != null ? CoinInfo.fromJson(json['CoinInfo']) : null;
    _raw = json['RAW'] != null ? Raw.fromJson(json['RAW']) : null;
    _display =
        json['DISPLAY'] != null ? Display.fromJson(json['DISPLAY']) : null;
  }
  CoinInfo? _coinInfo;
  Raw? _raw;
  Display? _display;

  CoinInfo? get coinInfo => _coinInfo;
  Raw? get raw => _raw;
  Display? get display => _display;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_coinInfo != null) {
      map['CoinInfo'] = _coinInfo?.toJson();
    }
    if (_raw != null) {
      map['RAW'] = _raw?.toJson();
    }
    if (_display != null) {
      map['DISPLAY'] = _display?.toJson();
    }
    return map;
  }
}

class Display {
  Display({
    UsdDisplay? usd,
  }) {
    _usd = usd;
  }

  Display.fromJson(dynamic json) {
    _usd = json['USD'] != null ? UsdDisplay.fromJson(json['USD']) : null;
  }
  UsdDisplay? _usd;

  UsdDisplay? get usd => _usd;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_usd != null) {
      map['USD'] = _usd?.toJson();
    }
    return map;
  }
}

class UsdDisplay {
  UsdDisplay({
    String? fromsymbol,
    String? tosymbol,
    String? market,
    String? lastmarket,
    String? toptiervolume24hour,
    String? toptiervolume24hourto,
    String? lasttradeid,
    String? price,
    String? lastupdate,
    String? lastvolume,
    String? lastvolumeto,
    String? volumehour,
    String? volumehourto,
    String? openhour,
    String? highhour,
    String? lowhour,
    String? volumeday,
    String? volumedayto,
    String? openday,
    String? highday,
    String? lowday,
    String? volume24hour,
    String? volume24hourto,
    String? open24hour,
    String? high24hour,
    String? low24hour,
    String? change24hour,
    String? changepct24hour,
    String? changeday,
    String? changepctday,
    String? changehour,
    String? changepcthour,
    String? conversiontype,
    String? conversionsymbol,
    String? conversionlastupdate,
    String? supply,
    String? mktcap,
    String? mktcappenalty,
    String? circulatingsupply,
    String? circulatingsupplymktcap,
    String? totalvolume24h,
    String? totalvolume24hto,
    String? totaltoptiervolume24h,
    String? totaltoptiervolume24hto,
    String? imageurl,
  }) {
    _fromsymbol = fromsymbol;
    _tosymbol = tosymbol;
    _market = market;
    _lastmarket = lastmarket;
    _toptiervolume24hour = toptiervolume24hour;
    _toptiervolume24hourto = toptiervolume24hourto;
    _lasttradeid = lasttradeid;
    _price = price;
    _lastupdate = lastupdate;
    _lastvolume = lastvolume;
    _lastvolumeto = lastvolumeto;
    _volumehour = volumehour;
    _volumehourto = volumehourto;
    _openhour = openhour;
    _highhour = highhour;
    _lowhour = lowhour;
    _volumeday = volumeday;
    _volumedayto = volumedayto;
    _openday = openday;
    _highday = highday;
    _lowday = lowday;
    _volume24hour = volume24hour;
    _volume24hourto = volume24hourto;
    _open24hour = open24hour;
    _high24hour = high24hour;
    _low24hour = low24hour;
    _change24hour = change24hour;
    _changepct24hour = changepct24hour;
    _changeday = changeday;
    _changepctday = changepctday;
    _changehour = changehour;
    _changepcthour = changepcthour;
    _conversiontype = conversiontype;
    _conversionsymbol = conversionsymbol;
    _conversionlastupdate = conversionlastupdate;
    _supply = supply;
    _mktcap = mktcap;
    _mktcappenalty = mktcappenalty;
    _circulatingsupply = circulatingsupply;
    _circulatingsupplymktcap = circulatingsupplymktcap;
    _totalvolume24h = totalvolume24h;
    _totalvolume24hto = totalvolume24hto;
    _totaltoptiervolume24h = totaltoptiervolume24h;
    _totaltoptiervolume24hto = totaltoptiervolume24hto;
    _imageurl = imageurl;
  }

  UsdDisplay.fromJson(dynamic json) {
    _fromsymbol = json['FROMSYMBOL'];
    _tosymbol = json['TOSYMBOL'];
    _market = json['MARKET'];
    _lastmarket = json['LASTMARKET'];
    _toptiervolume24hour = json['TOPTIERVOLUME24HOUR'];
    _toptiervolume24hourto = json['TOPTIERVOLUME24HOURTO'];
    _lasttradeid = json['LASTTRADEID'];
    _price = json['PRICE'];
    _lastupdate = json['LASTUPDATE'];
    _lastvolume = json['LASTVOLUME'];
    _lastvolumeto = json['LASTVOLUMETO'];
    _volumehour = json['VOLUMEHOUR'];
    _volumehourto = json['VOLUMEHOURTO'];
    _openhour = json['OPENHOUR'];
    _highhour = json['HIGHHOUR'];
    _lowhour = json['LOWHOUR'];
    _volumeday = json['VOLUMEDAY'];
    _volumedayto = json['VOLUMEDAYTO'];
    _openday = json['OPENDAY'];
    _highday = json['HIGHDAY'];
    _lowday = json['LOWDAY'];
    _volume24hour = json['VOLUME24HOUR'];
    _volume24hourto = json['VOLUME24HOURTO'];
    _open24hour = json['OPEN24HOUR'];
    _high24hour = json['HIGH24HOUR'];
    _low24hour = json['LOW24HOUR'];
    _change24hour = json['CHANGE24HOUR'];
    _changepct24hour = json['CHANGEPCT24HOUR'];
    _changeday = json['CHANGEDAY'];
    _changepctday = json['CHANGEPCTDAY'];
    _changehour = json['CHANGEHOUR'];
    _changepcthour = json['CHANGEPCTHOUR'];
    _conversiontype = json['CONVERSIONTYPE'];
    _conversionsymbol = json['CONVERSIONSYMBOL'];
    _conversionlastupdate = json['CONVERSIONLASTUPDATE'];
    _supply = json['SUPPLY'];
    _mktcap = json['MKTCAP'];
    _mktcappenalty = json['MKTCAPPENALTY'];
    _circulatingsupply = json['CIRCULATINGSUPPLY'];
    _circulatingsupplymktcap = json['CIRCULATINGSUPPLYMKTCAP'];
    _totalvolume24h = json['TOTALVOLUME24H'];
    _totalvolume24hto = json['TOTALVOLUME24HTO'];
    _totaltoptiervolume24h = json['TOTALTOPTIERVOLUME24H'];
    _totaltoptiervolume24hto = json['TOTALTOPTIERVOLUME24HTO'];
    _imageurl = json['IMAGEURL'];
  }
  String? _fromsymbol;
  String? _tosymbol;
  String? _market;
  String? _lastmarket;
  String? _toptiervolume24hour;
  String? _toptiervolume24hourto;
  String? _lasttradeid;
  String? _price;
  String? _lastupdate;
  String? _lastvolume;
  String? _lastvolumeto;
  String? _volumehour;
  String? _volumehourto;
  String? _openhour;
  String? _highhour;
  String? _lowhour;
  String? _volumeday;
  String? _volumedayto;
  String? _openday;
  String? _highday;
  String? _lowday;
  String? _volume24hour;
  String? _volume24hourto;
  String? _open24hour;
  String? _high24hour;
  String? _low24hour;
  String? _change24hour;
  String? _changepct24hour;
  String? _changeday;
  String? _changepctday;
  String? _changehour;
  String? _changepcthour;
  String? _conversiontype;
  String? _conversionsymbol;
  String? _conversionlastupdate;
  String? _supply;
  String? _mktcap;
  String? _mktcappenalty;
  String? _circulatingsupply;
  String? _circulatingsupplymktcap;
  String? _totalvolume24h;
  String? _totalvolume24hto;
  String? _totaltoptiervolume24h;
  String? _totaltoptiervolume24hto;
  String? _imageurl;

  String? get fromsymbol => _fromsymbol;
  String? get tosymbol => _tosymbol;
  String? get market => _market;
  String? get lastmarket => _lastmarket;
  String? get toptiervolume24hour => _toptiervolume24hour;
  String? get toptiervolume24hourto => _toptiervolume24hourto;
  String? get lasttradeid => _lasttradeid;
  String? get price => _price;
  String? get lastupdate => _lastupdate;
  String? get lastvolume => _lastvolume;
  String? get lastvolumeto => _lastvolumeto;
  String? get volumehour => _volumehour;
  String? get volumehourto => _volumehourto;
  String? get openhour => _openhour;
  String? get highhour => _highhour;
  String? get lowhour => _lowhour;
  String? get volumeday => _volumeday;
  String? get volumedayto => _volumedayto;
  String? get openday => _openday;
  String? get highday => _highday;
  String? get lowday => _lowday;
  String? get volume24hour => _volume24hour;
  String? get volume24hourto => _volume24hourto;
  String? get open24hour => _open24hour;
  String? get high24hour => _high24hour;
  String? get low24hour => _low24hour;
  String? get change24hour => _change24hour;
  String? get changepct24hour => _changepct24hour;
  String? get changeday => _changeday;
  String? get changepctday => _changepctday;
  String? get changehour => _changehour;
  String? get changepcthour => _changepcthour;
  String? get conversiontype => _conversiontype;
  String? get conversionsymbol => _conversionsymbol;
  String? get conversionlastupdate => _conversionlastupdate;
  String? get supply => _supply;
  String? get mktcap => _mktcap;
  String? get mktcappenalty => _mktcappenalty;
  String? get circulatingsupply => _circulatingsupply;
  String? get circulatingsupplymktcap => _circulatingsupplymktcap;
  String? get totalvolume24h => _totalvolume24h;
  String? get totalvolume24hto => _totalvolume24hto;
  String? get totaltoptiervolume24h => _totaltoptiervolume24h;
  String? get totaltoptiervolume24hto => _totaltoptiervolume24hto;
  String? get imageurl => _imageurl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['FROMSYMBOL'] = _fromsymbol;
    map['TOSYMBOL'] = _tosymbol;
    map['MARKET'] = _market;
    map['LASTMARKET'] = _lastmarket;
    map['TOPTIERVOLUME24HOUR'] = _toptiervolume24hour;
    map['TOPTIERVOLUME24HOURTO'] = _toptiervolume24hourto;
    map['LASTTRADEID'] = _lasttradeid;
    map['PRICE'] = _price;
    map['LASTUPDATE'] = _lastupdate;
    map['LASTVOLUME'] = _lastvolume;
    map['LASTVOLUMETO'] = _lastvolumeto;
    map['VOLUMEHOUR'] = _volumehour;
    map['VOLUMEHOURTO'] = _volumehourto;
    map['OPENHOUR'] = _openhour;
    map['HIGHHOUR'] = _highhour;
    map['LOWHOUR'] = _lowhour;
    map['VOLUMEDAY'] = _volumeday;
    map['VOLUMEDAYTO'] = _volumedayto;
    map['OPENDAY'] = _openday;
    map['HIGHDAY'] = _highday;
    map['LOWDAY'] = _lowday;
    map['VOLUME24HOUR'] = _volume24hour;
    map['VOLUME24HOURTO'] = _volume24hourto;
    map['OPEN24HOUR'] = _open24hour;
    map['HIGH24HOUR'] = _high24hour;
    map['LOW24HOUR'] = _low24hour;
    map['CHANGE24HOUR'] = _change24hour;
    map['CHANGEPCT24HOUR'] = _changepct24hour;
    map['CHANGEDAY'] = _changeday;
    map['CHANGEPCTDAY'] = _changepctday;
    map['CHANGEHOUR'] = _changehour;
    map['CHANGEPCTHOUR'] = _changepcthour;
    map['CONVERSIONTYPE'] = _conversiontype;
    map['CONVERSIONSYMBOL'] = _conversionsymbol;
    map['CONVERSIONLASTUPDATE'] = _conversionlastupdate;
    map['SUPPLY'] = _supply;
    map['MKTCAP'] = _mktcap;
    map['MKTCAPPENALTY'] = _mktcappenalty;
    map['CIRCULATINGSUPPLY'] = _circulatingsupply;
    map['CIRCULATINGSUPPLYMKTCAP'] = _circulatingsupplymktcap;
    map['TOTALVOLUME24H'] = _totalvolume24h;
    map['TOTALVOLUME24HTO'] = _totalvolume24hto;
    map['TOTALTOPTIERVOLUME24H'] = _totaltoptiervolume24h;
    map['TOTALTOPTIERVOLUME24HTO'] = _totaltoptiervolume24hto;
    map['IMAGEURL'] = _imageurl;
    return map;
  }
}

class Raw {
  Raw({
    UsdRaw? usd,
  }) {
    _usd = usd;
  }

  Raw.fromJson(dynamic json) {
    _usd = json['USD'] != null ? UsdRaw.fromJson(json['USD']) : null;
  }
  UsdRaw? _usd;

  UsdRaw? get usd => _usd;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_usd != null) {
      map['USD'] = _usd?.toJson();
    }
    return map;
  }
}

class UsdRaw {
  UsdRaw({
    String? type,
    String? market,
    String? fromsymbol,
    String? tosymbol,
    String? flags,
    String? lastmarket,
    num? median,
    num? toptiervolume24hour,
    num? toptiervolume24hourto,
    String? lasttradeid,
    num? price,
    num? lastupdate,
    num? lastvolume,
    num? lastvolumeto,
    num? volumehour,
    num? volumehourto,
    num? openhour,
    num? highhour,
    num? lowhour,
    num? volumeday,
    num? volumedayto,
    num? openday,
    num? highday,
    num? lowday,
    num? volume24hour,
    num? volume24hourto,
    num? open24hour,
    num? high24hour,
    num? low24hour,
    num? change24hour,
    num? changepct24hour,
    num? changeday,
    num? changepctday,
    num? changehour,
    num? changepcthour,
    String? conversiontype,
    String? conversionsymbol,
    num? conversionlastupdate,
    num? supply,
    num? mktcap,
    num? mktcappenalty,
    num? circulatingsupply,
    num? circulatingsupplymktcap,
    num? totalvolume24h,
    num? totalvolume24hto,
    num? totaltoptiervolume24h,
    num? totaltoptiervolume24hto,
    String? imageurl,
  }) {
    _type = type;
    _market = market;
    _fromsymbol = fromsymbol;
    _tosymbol = tosymbol;
    _flags = flags;
    _lastmarket = lastmarket;
    _median = median;
    _toptiervolume24hour = toptiervolume24hour;
    _toptiervolume24hourto = toptiervolume24hourto;
    _lasttradeid = lasttradeid;
    _price = price;
    _lastupdate = lastupdate;
    _lastvolume = lastvolume;
    _lastvolumeto = lastvolumeto;
    _volumehour = volumehour;
    _volumehourto = volumehourto;
    _openhour = openhour;
    _highhour = highhour;
    _lowhour = lowhour;
    _volumeday = volumeday;
    _volumedayto = volumedayto;
    _openday = openday;
    _highday = highday;
    _lowday = lowday;
    _volume24hour = volume24hour;
    _volume24hourto = volume24hourto;
    _open24hour = open24hour;
    _high24hour = high24hour;
    _low24hour = low24hour;
    _change24hour = change24hour;
    _changepct24hour = changepct24hour;
    _changeday = changeday;
    _changepctday = changepctday;
    _changehour = changehour;
    _changepcthour = changepcthour;
    _conversiontype = conversiontype;
    _conversionsymbol = conversionsymbol;
    _conversionlastupdate = conversionlastupdate;
    _supply = supply;
    _mktcap = mktcap;
    _mktcappenalty = mktcappenalty;
    _circulatingsupply = circulatingsupply;
    _circulatingsupplymktcap = circulatingsupplymktcap;
    _totalvolume24h = totalvolume24h;
    _totalvolume24hto = totalvolume24hto;
    _totaltoptiervolume24h = totaltoptiervolume24h;
    _totaltoptiervolume24hto = totaltoptiervolume24hto;
    _imageurl = imageurl;
  }

  UsdRaw.fromJson(dynamic json) {
    _type = json['TYPE'];
    _market = json['MARKET'];
    _fromsymbol = json['FROMSYMBOL'];
    _tosymbol = json['TOSYMBOL'];
    _flags = json['FLAGS'];
    _lastmarket = json['LASTMARKET'];
    _median = json['MEDIAN'];
    _toptiervolume24hour = json['TOPTIERVOLUME24HOUR'];
    _toptiervolume24hourto = json['TOPTIERVOLUME24HOURTO'];
    _lasttradeid = json['LASTTRADEID'];
    _price = json['PRICE'];
    _lastupdate = json['LASTUPDATE'];
    _lastvolume = json['LASTVOLUME'];
    _lastvolumeto = json['LASTVOLUMETO'];
    _volumehour = json['VOLUMEHOUR'];
    _volumehourto = json['VOLUMEHOURTO'];
    _openhour = json['OPENHOUR'];
    _highhour = json['HIGHHOUR'];
    _lowhour = json['LOWHOUR'];
    _volumeday = json['VOLUMEDAY'];
    _volumedayto = json['VOLUMEDAYTO'];
    _openday = json['OPENDAY'];
    _highday = json['HIGHDAY'];
    _lowday = json['LOWDAY'];
    _volume24hour = json['VOLUME24HOUR'];
    _volume24hourto = json['VOLUME24HOURTO'];
    _open24hour = json['OPEN24HOUR'];
    _high24hour = json['HIGH24HOUR'];
    _low24hour = json['LOW24HOUR'];
    _change24hour = json['CHANGE24HOUR'];
    _changepct24hour = json['CHANGEPCT24HOUR'];
    _changeday = json['CHANGEDAY'];
    _changepctday = json['CHANGEPCTDAY'];
    _changehour = json['CHANGEHOUR'];
    _changepcthour = json['CHANGEPCTHOUR'];
    _conversiontype = json['CONVERSIONTYPE'];
    _conversionsymbol = json['CONVERSIONSYMBOL'];
    _conversionlastupdate = json['CONVERSIONLASTUPDATE'];
    _supply = json['SUPPLY'];
    _mktcap = json['MKTCAP'];
    _mktcappenalty = json['MKTCAPPENALTY'];
    _circulatingsupply = json['CIRCULATINGSUPPLY'];
    _circulatingsupplymktcap = json['CIRCULATINGSUPPLYMKTCAP'];
    _totalvolume24h = json['TOTALVOLUME24H'];
    _totalvolume24hto = json['TOTALVOLUME24HTO'];
    _totaltoptiervolume24h = json['TOTALTOPTIERVOLUME24H'];
    _totaltoptiervolume24hto = json['TOTALTOPTIERVOLUME24HTO'];
    _imageurl = json['IMAGEURL'];
  }
  String? _type;
  String? _market;
  String? _fromsymbol;
  String? _tosymbol;
  String? _flags;
  String? _lastmarket;
  num? _median;
  num? _toptiervolume24hour;
  num? _toptiervolume24hourto;
  String? _lasttradeid;
  num? _price;
  num? _lastupdate;
  num? _lastvolume;
  num? _lastvolumeto;
  num? _volumehour;
  num? _volumehourto;
  num? _openhour;
  num? _highhour;
  num? _lowhour;
  num? _volumeday;
  num? _volumedayto;
  num? _openday;
  num? _highday;
  num? _lowday;
  num? _volume24hour;
  num? _volume24hourto;
  num? _open24hour;
  num? _high24hour;
  num? _low24hour;
  num? _change24hour;
  num? _changepct24hour;
  num? _changeday;
  num? _changepctday;
  num? _changehour;
  num? _changepcthour;
  String? _conversiontype;
  String? _conversionsymbol;
  num? _conversionlastupdate;
  num? _supply;
  num? _mktcap;
  num? _mktcappenalty;
  num? _circulatingsupply;
  num? _circulatingsupplymktcap;
  num? _totalvolume24h;
  num? _totalvolume24hto;
  num? _totaltoptiervolume24h;
  num? _totaltoptiervolume24hto;
  String? _imageurl;

  String? get type => _type;
  String? get market => _market;
  String? get fromsymbol => _fromsymbol;
  String? get tosymbol => _tosymbol;
  String? get flags => _flags;
  String? get lastmarket => _lastmarket;
  num? get median => _median;
  num? get toptiervolume24hour => _toptiervolume24hour;
  num? get toptiervolume24hourto => _toptiervolume24hourto;
  String? get lasttradeid => _lasttradeid;
  num? get price => _price;
  num? get lastupdate => _lastupdate;
  num? get lastvolume => _lastvolume;
  num? get lastvolumeto => _lastvolumeto;
  num? get volumehour => _volumehour;
  num? get volumehourto => _volumehourto;
  num? get openhour => _openhour;
  num? get highhour => _highhour;
  num? get lowhour => _lowhour;
  num? get volumeday => _volumeday;
  num? get volumedayto => _volumedayto;
  num? get openday => _openday;
  num? get highday => _highday;
  num? get lowday => _lowday;
  num? get volume24hour => _volume24hour;
  num? get volume24hourto => _volume24hourto;
  num? get open24hour => _open24hour;
  num? get high24hour => _high24hour;
  num? get low24hour => _low24hour;
  num? get change24hour => _change24hour;
  num? get changepct24hour => _changepct24hour;
  num? get changeday => _changeday;
  num? get changepctday => _changepctday;
  num? get changehour => _changehour;
  num? get changepcthour => _changepcthour;
  String? get conversiontype => _conversiontype;
  String? get conversionsymbol => _conversionsymbol;
  num? get conversionlastupdate => _conversionlastupdate;
  num? get supply => _supply;
  num? get mktcap => _mktcap;
  num? get mktcappenalty => _mktcappenalty;
  num? get circulatingsupply => _circulatingsupply;
  num? get circulatingsupplymktcap => _circulatingsupplymktcap;
  num? get totalvolume24h => _totalvolume24h;
  num? get totalvolume24hto => _totalvolume24hto;
  num? get totaltoptiervolume24h => _totaltoptiervolume24h;
  num? get totaltoptiervolume24hto => _totaltoptiervolume24hto;
  String? get imageurl => _imageurl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['TYPE'] = _type;
    map['MARKET'] = _market;
    map['FROMSYMBOL'] = _fromsymbol;
    map['TOSYMBOL'] = _tosymbol;
    map['FLAGS'] = _flags;
    map['LASTMARKET'] = _lastmarket;
    map['MEDIAN'] = _median;
    map['TOPTIERVOLUME24HOUR'] = _toptiervolume24hour;
    map['TOPTIERVOLUME24HOURTO'] = _toptiervolume24hourto;
    map['LASTTRADEID'] = _lasttradeid;
    map['PRICE'] = _price;
    map['LASTUPDATE'] = _lastupdate;
    map['LASTVOLUME'] = _lastvolume;
    map['LASTVOLUMETO'] = _lastvolumeto;
    map['VOLUMEHOUR'] = _volumehour;
    map['VOLUMEHOURTO'] = _volumehourto;
    map['OPENHOUR'] = _openhour;
    map['HIGHHOUR'] = _highhour;
    map['LOWHOUR'] = _lowhour;
    map['VOLUMEDAY'] = _volumeday;
    map['VOLUMEDAYTO'] = _volumedayto;
    map['OPENDAY'] = _openday;
    map['HIGHDAY'] = _highday;
    map['LOWDAY'] = _lowday;
    map['VOLUME24HOUR'] = _volume24hour;
    map['VOLUME24HOURTO'] = _volume24hourto;
    map['OPEN24HOUR'] = _open24hour;
    map['HIGH24HOUR'] = _high24hour;
    map['LOW24HOUR'] = _low24hour;
    map['CHANGE24HOUR'] = _change24hour;
    map['CHANGEPCT24HOUR'] = _changepct24hour;
    map['CHANGEDAY'] = _changeday;
    map['CHANGEPCTDAY'] = _changepctday;
    map['CHANGEHOUR'] = _changehour;
    map['CHANGEPCTHOUR'] = _changepcthour;
    map['CONVERSIONTYPE'] = _conversiontype;
    map['CONVERSIONSYMBOL'] = _conversionsymbol;
    map['CONVERSIONLASTUPDATE'] = _conversionlastupdate;
    map['SUPPLY'] = _supply;
    map['MKTCAP'] = _mktcap;
    map['MKTCAPPENALTY'] = _mktcappenalty;
    map['CIRCULATINGSUPPLY'] = _circulatingsupply;
    map['CIRCULATINGSUPPLYMKTCAP'] = _circulatingsupplymktcap;
    map['TOTALVOLUME24H'] = _totalvolume24h;
    map['TOTALVOLUME24HTO'] = _totalvolume24hto;
    map['TOTALTOPTIERVOLUME24H'] = _totaltoptiervolume24h;
    map['TOTALTOPTIERVOLUME24HTO'] = _totaltoptiervolume24hto;
    map['IMAGEURL'] = _imageurl;
    return map;
  }
}

class CoinInfo {
  CoinInfo({
    String? id,
    String? name,
    String? fullName,
    String? internal,
    String? imageUrl,
    String? url,
    String? algorithm,
    String? proofType,
    Rating? rating,
    num? netHashesPerSecond,
    num? blockNumber,
    num? blockTime,
    num? blockReward,
    String? assetLaunchDate,
    num? maxSupply,
    num? type,
    String? documentType,
  }) {
    _id = id;
    _name = name;
    _fullName = fullName;
    _internal = internal;
    _imageUrl = imageUrl;
    _url = url;
    _algorithm = algorithm;
    _proofType = proofType;
    _rating = rating;
    _netHashesPerSecond = netHashesPerSecond;
    _blockNumber = blockNumber;
    _blockTime = blockTime;
    _blockReward = blockReward;
    _assetLaunchDate = assetLaunchDate;
    _maxSupply = maxSupply;
    _type = type;
    _documentType = documentType;
  }

  CoinInfo.fromJson(dynamic json) {
    _id = json['Id'];
    _name = json['Name'];
    _fullName = json['FullName'];
    _internal = json['Internal'];
    _imageUrl = json['ImageUrl'];
    _url = json['Url'];
    _algorithm = json['Algorithm'];
    _proofType = json['ProofType'];
    _rating = json['Rating'] != null ? Rating.fromJson(json['Rating']) : null;
    _netHashesPerSecond = json['NetHashesPerSecond'];
    _blockNumber = json['BlockNumber'];
    _blockTime = json['BlockTime'];
    _blockReward = json['BlockReward'];
    _assetLaunchDate = json['AssetLaunchDate'];
    _maxSupply = json['MaxSupply'];
    _type = json['Type'];
    _documentType = json['DocumentType'];
  }
  String? _id;
  String? _name;
  String? _fullName;
  String? _internal;
  String? _imageUrl;
  String? _url;
  String? _algorithm;
  String? _proofType;
  Rating? _rating;
  num? _netHashesPerSecond;
  num? _blockNumber;
  num? _blockTime;
  num? _blockReward;
  String? _assetLaunchDate;
  num? _maxSupply;
  num? _type;
  String? _documentType;

  String? get id => _id;
  String? get name => _name;
  String? get fullName => _fullName;
  String? get internal => _internal;
  String? get imageUrl => _imageUrl;
  String? get url => _url;
  String? get algorithm => _algorithm;
  String? get proofType => _proofType;
  Rating? get rating => _rating;
  num? get netHashesPerSecond => _netHashesPerSecond;
  num? get blockNumber => _blockNumber;
  num? get blockTime => _blockTime;
  num? get blockReward => _blockReward;
  String? get assetLaunchDate => _assetLaunchDate;
  num? get maxSupply => _maxSupply;
  num? get type => _type;
  String? get documentType => _documentType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = _id;
    map['Name'] = _name;
    map['FullName'] = _fullName;
    map['Internal'] = _internal;
    map['ImageUrl'] = _imageUrl;
    map['Url'] = _url;
    map['Algorithm'] = _algorithm;
    map['ProofType'] = _proofType;
    if (_rating != null) {
      map['Rating'] = _rating?.toJson();
    }
    map['NetHashesPerSecond'] = _netHashesPerSecond;
    map['BlockNumber'] = _blockNumber;
    map['BlockTime'] = _blockTime;
    map['BlockReward'] = _blockReward;
    map['AssetLaunchDate'] = _assetLaunchDate;
    map['MaxSupply'] = _maxSupply;
    map['Type'] = _type;
    map['DocumentType'] = _documentType;
    return map;
  }
}

class Rating {
  Rating({
    Weiss? weiss,
  }) {
    _weiss = weiss;
  }

  Rating.fromJson(dynamic json) {
    _weiss = json['Weiss'] != null ? Weiss.fromJson(json['Weiss']) : null;
  }
  Weiss? _weiss;

  Weiss? get weiss => _weiss;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_weiss != null) {
      map['Weiss'] = _weiss?.toJson();
    }
    return map;
  }
}

class Weiss {
  Weiss({
    String? rating,
    String? technologyAdoptionRating,
    String? marketPerformanceRating,
  }) {
    _rating = rating;
    _technologyAdoptionRating = technologyAdoptionRating;
    _marketPerformanceRating = marketPerformanceRating;
  }

  Weiss.fromJson(dynamic json) {
    _rating = json['Rating'];
    _technologyAdoptionRating = json['TechnologyAdoptionRating'];
    _marketPerformanceRating = json['MarketPerformanceRating'];
  }
  String? _rating;
  String? _technologyAdoptionRating;
  String? _marketPerformanceRating;

  String? get rating => _rating;
  String? get technologyAdoptionRating => _technologyAdoptionRating;
  String? get marketPerformanceRating => _marketPerformanceRating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Rating'] = _rating;
    map['TechnologyAdoptionRating'] = _technologyAdoptionRating;
    map['MarketPerformanceRating'] = _marketPerformanceRating;
    return map;
  }
}

class MetaData {
  MetaData({
    num? count,
  }) {
    _count = count;
  }

  MetaData.fromJson(dynamic json) {
    _count = json['Count'];
  }
  num? _count;

  num? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Count'] = _count;
    return map;
  }
}
