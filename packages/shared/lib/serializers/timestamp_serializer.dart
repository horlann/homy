import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampSerializer implements JsonConverter<DateTime?, dynamic> {
  const TimestampSerializer();
  @override
  DateTime? fromJson(dynamic data) {
    Timestamp? timestamp;
    if (data == null) {
      return null;
    } else if (data is Timestamp) {
      timestamp = data;
    } else if (data is num) {
      timestamp = Timestamp.fromMillisecondsSinceEpoch(data as int);
    } else {
      throw Exception('Unable to parse Timestamp. Data = $data');
    }
    return timestamp.toDate();
  }

  @override
  Timestamp? toJson(DateTime? dateTime) {
    if (dateTime == null) {
      return null;
    }
    final timestamp = Timestamp.fromDate(dateTime);
    return timestamp;
  }
}
class TimestampSerializer2  {
  const TimestampSerializer2();
static  DateTime? fromJson(dynamic data) {
    Timestamp? timestamp;
    if (data == null) {
      return null;
    } else if (data is Timestamp) {
      timestamp = data;
    } else if (data is num) {
      timestamp = Timestamp.fromMillisecondsSinceEpoch(data as int);
    } else {
      throw Exception('Unable to parse Timestamp. Data = $data');
    }
    return timestamp.toDate();
  }

  static  Timestamp? toJson(DateTime? dateTime) {
    if (dateTime == null) {
      return null;
    }
    final timestamp = Timestamp.fromDate(dateTime);
    return timestamp;
  }
}
