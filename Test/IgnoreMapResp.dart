import 'dart:convert' show json;

class IgnoreMapResp {

  Data data;

  IgnoreMapResp.fromParams({this.data});

  factory IgnoreMapResp(jsonStr) => jsonStr == null ? null : jsonStr is String ? new IgnoreMapResp.fromJson(json.decode(jsonStr)) : new IgnoreMapResp.fromJson(jsonStr);

  IgnoreMapResp.fromJson(jsonRes) {
    data = jsonRes['data'] == null ? null : new Data.fromJson(jsonRes['data']);
  }

  @override
  String toString() {
    return '{"data": $data}';
  }
}

class Data {

  int wc;
  String author;
  String content;
  String digest;
  String title;
  Map<String, dynamic> date;
  Extra extra;

  Data.fromParams({this.wc, this.author, this.content, this.digest, this.title, this.date, this.extra});

  Data.fromJson(jsonRes) {
    wc = jsonRes['wc'];
    author = jsonRes['author'];
    content = jsonRes['content'];
    digest = jsonRes['digest'];
    title = jsonRes['title'];
    date = jsonRes['date'];
    extra = jsonRes['extra'] == null ? null : new Extra.fromJson(jsonRes['extra']);
  }

  @override
  String toString() {
    return '{"wc": $wc,"author": ${author != null?'${json.encode(author)}':'null'},"content": ${content != null?'${json.encode(content)}':'null'},"digest": ${digest != null?'${json.encode(digest)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'},"date": ${date != null?'${json.encode(date)}':'null'},"extra": $extra}';
  }
}

class Extra {

  int a;
  int b;
  int c;

  Extra.fromParams({this.a, this.b, this.c});

  Extra.fromJson(jsonRes) {
    a = jsonRes['a'];
    b = jsonRes['b'];
    c = jsonRes['c'];
  }

  @override
  String toString() {
    return '{"a": $a,"b": $b,"c": $c}';
  }
}

