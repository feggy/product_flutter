import 'dart:convert';

String getPrettyJSONString(dynamic jsonObject) {
  const encoder = JsonEncoder.withIndent('  ');
  return encoder.convert(jsonObject);
}
