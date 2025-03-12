import 'package:flutter/material.dart';

// 쇼케이스를 표시할 페이지들을 enum으로 관리
enum ShowcasePage {
  home,
  profile,
  settings,
  // 새로운 페이지는 여기에 추가
}

// 각 페이지 내의 쇼케이스 요소들을 enum으로 관리
enum HomeShowcase {
  title,
  button,
  fab,
}

class ShowcaseKeys {
  // GlobalKey 맵 저장소
  static final Map<HomeShowcase, GlobalKey> home = {
    HomeShowcase.title: GlobalKey(),
    HomeShowcase.button: GlobalKey(),
    HomeShowcase.fab: GlobalKey(),
  };
}
