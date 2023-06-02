## MVVM example 03
- MVVM 패턴을 이용한 뉴스 페이지
- openAPI를 테이블 뷰에 담아 표현

#### [오류 이슈]
- build는 성공했으나 아무런 정보가 보이지 않았던 문제는 Main.storyboard 에서 TableViewController를 Is Initial View Controller로 설정해줌으로 해결했다.

#### [swift 프로젝트]
- Article.swift -> Model
- TableViewController.swift -> View
- TableViewCell -> View에 들어갈 cell
- Main.storyboard -> View
- ArticleListViewModel.swift -> ViewModel
- WebService.swift -> API 받아올 service. VM
을 참고하라

#### [출력결과]
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/0aa61e33-75f3-4ba6-85da-c2c09fff0ecc" width = "250" height = "400"/>

#
#### [예제 참고]
https://42kchoi.tistory.com/292
