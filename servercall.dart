import 'dart:convert';
import 'dart:io';

void main(){
  HttpClient().
  getUrl(
    Uri.parse('http://ip-api.com/json/151.101.128.81'))
    .then((request)=>request.close())
    .then((response)=>
    response.transform(Utf8Decoder()).listen(print)
    ).catchError((err)=>print("Error is $err"));
}