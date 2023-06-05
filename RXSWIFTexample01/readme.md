## RxSwift example 01
- RxSwift의 기본 개념을 이용한 간단한 로그인 페이지
- Observer 패턴에서 Observable 타입 이용
- 텍스트 필드에 값이 입력될때 마다 정보 갱신, 상태 레이블과 버튼의 서식 변경이 입력시 마다 생김

#### [오류 이슈]
- RxSwift, RxRelay RxCocoa의 모듈 오류가 날 수 있다. 이때 패키지 https://github.com/ReactiveX/RxSwift.git 를 찾아 다운로드, 프로젝트에 추가
- 프로젝트 네비게이터를 통해 Link Binary With Libraries 섹션에서 세가지 모듈을 추가해주면 오류를 처리할 수 있다.

#### [swift 프로젝트]
- Main.stroyboard
- LoginViewModel.swift
- ViewController.swift
을 참고하라

#### [출력결과]
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/96d3e84c-305f-4a8e-bec7-6f92e0c3e4f8" width = "250" height = "400"/>

#
#### [예제 참고]
http://yoonbumtae.com/?p=4474
