## MVVM example 05
- MVVM example 04에서 이어지는 예제이다
- MVVM 패턴을 이용한 뉴스 리스트 페이지
- openAPI를 테이블 뷰에 담아 표현
- title, description 입력 페이지
- password 페이지
- 데이터 바인딩에서 stringtype을 observe 할 수 없기에 custom class 생성함

#### [swift 프로젝트]
- DynamicTypes.swift
- Article.swift -> Model. 파싱할 데이터 json 구조
- AddArticleViewModel.swift -> ViewModel. Model에서 파싱한 것을 viewController에서 인스턴스화 새서 UI에 뿌려질 데이터를 가지고 있는 역할
- ArticleDetailViewModel.swift -> ViewModel
- ArticleListViewModel.swift -> ViewModel
- ChangePassword.swift -> ViewModel
- AddArticleController.swift -> Controller 
- ArticleDetailsViewController.swift -> Controller  
- ArticleListTableViewController.swift -> Controller 
- ChangePasswordViewController.swift -> Controller 
- BindingTextField.swift
- WebService.swift -> api에서 json을 받아와 Article.swift(model)에 작성된 모델형태로 객체변환(viewController와 네트웤 레이어 분리 하기 위함)

#### [출력결과]
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/768d566c-b376-4ae4-bb07-822877aeaca2" />
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/9003587c-f777-4c06-bd2e-556317f1b8cc"/>
&nbsp

#
#### [예제 참고]
https://github.com/azamsharp/HeadlinesMVVM
