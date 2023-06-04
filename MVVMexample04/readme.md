## MVVM example 04
- MVVM 패턴을 이용한 뉴스 리스트 페이지
- openAPI를 테이블 뷰에 담아 표현
- MVVM example 03과 다르게 네비게이션 컨트롤러에 테이블뷰를 연동하지 않고 테이블 뷰만 사용
- 데이터 바인딩에서 stringtype을 observe 할 수 없기에 custom class 생성함

#### [swift 프로젝트]
- Article.swift -> Model. 파싱할 데이터 json 구조
- ListViewModel.swift -> ViewModel. Model에서 파싱한 것을 viewController에서 인스턴스화 새서 UI에 뿌려질 데이터를 가지고 있는 역할
- ViewController.swift -> Controller. 
- WebService.swift -> api에서 json을 받아와 Article.swift(model)에 작성된 모델형태로 객체변환(viewController와 네트웤 레이어 분리 하기 위함)

#### [출력결과]
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/00cd85b5-a5b1-4286-9ef0-bfec145fbbb3" width = "250" height = "400" />


#
#### [예제 참고]
(https://haningya.tistory.com/67
