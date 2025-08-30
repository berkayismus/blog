// lib/core/utils/title_helper.dart
import 'dart:js_interop';

@JS('document.title')
external set _documentTitle(String title);

void setWebTitle(String title) {
  _documentTitle = title;
}
