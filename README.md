# Flutter ShowcaseView 튜토리얼 앱

이 프로젝트는 Flutter 앱에서 사용자 튜토리얼을 구현하는 방법을 보여주는 예제입니다. [showcaseview](https://pub.dev/packages/showcaseview) 패키지를 활용하여 앱의 주요 기능을 사용자에게 안내하는 방법을 구현했습니다.

## 프로젝트 목적

이 프로젝트는 다음과 같은 목적으로 개발되었습니다:

1. **사용자 온보딩 경험 개선**: 앱을 처음 사용하는 사용자에게 주요 기능과 UI 요소를 안내합니다.
2. **재사용 가능한 튜토리얼 구조 제공**: 확장 가능하고 유지보수가 쉬운 튜토리얼 시스템을 구현했습니다.
3. **상태 관리**: SharedPreferences를 사용하여 사용자가 이미 튜토리얼을 봤는지 여부를 저장합니다.

## 주요 기능

- **체계적인 튜토리얼 관리**: enum을 사용하여 페이지와 튜토리얼 요소를 관리합니다.
- **재사용 가능한 컴포넌트**: ShowcaseWrapper, ShowcaseMixin 등을 통해 코드 재사용성을 높였습니다.
- **튜토리얼 상태 관리**: 사용자가 이미 튜토리얼을 봤는지 여부를 저장하고 관리합니다.
- **튜토리얼 재시작 기능**: 사용자가 원할 때 튜토리얼을 다시 볼 수 있는 기능을 제공합니다.

## 구조

프로젝트는 다음과 같은 구조로 구성되어 있습니다:

- `showcase_keys.dart`: 튜토리얼 요소의 GlobalKey를 관리합니다.
- `showcase_descriptions.dart`: 각 튜토리얼 요소에 대한 설명을 관리합니다.
- `showcase_helper.dart`: 튜토리얼 상태 관리를 위한 유틸리티 함수를 제공합니다.
- `showcase_mixin.dart`: 튜토리얼 시작 로직을 재사용 가능한 믹스인으로 제공합니다.
- `showcase_wrapper.dart`: 튜토리얼 요소를 감싸는 위젯을 제공합니다.

## 시작하기

1. 의존성 설치:

```bash
flutter pub get
```

2. 앱 실행:

```bash
flutter run
```

## 확장 방법

새로운 페이지에 튜토리얼을 추가하려면:

1. `showcase_keys.dart`에 새 페이지 enum 값을 추가합니다.
2. 해당 페이지의 튜토리얼 요소에 대한 enum을 정의합니다.
3. `ShowcaseKeys` 클래스에 새 페이지의 GlobalKey 맵을 추가합니다.
4. `showcase_descriptions.dart`에 새 페이지의 설명을 추가합니다.
