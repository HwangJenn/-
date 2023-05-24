## MVC example 01
- MVC 패턴을 이용한 간단한 로그인 페이지
- 지정한 이메일과 패스워드 올바른 입력시 "로그인 성공", 틀린 입력시 "로그인 실페" 메시지 출력
- View(UILabel, UITextField)에서 UILabel은 UIView를, UITextField의 경우 UIView(UIControl을 상속함) 상속받고 있다. M"V"C
- ViewContorller.swift에서 class ViewController: UIViewController {}이 MV"C"
- Model 폴더의 User.swift이 "M"VC. 


#### [swift 프로젝트]
- ViewController.swift
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/ed2b8232-a1fc-436a-980d-571df398128b.png" width = "800" height = "400"/>

- User.swift
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/90706a6e-ae64-4072-a87a-5807e5927a00.png" width = "800" height = "400"/>

- Main.storyboard
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/36b6d25e-535e-4146-a5ff-ea3eff85f92b.png" width = "250" height = "300"/>


#### [출력 결과]
- 초기화면 
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/0c084a02-d739-401e-a692-d53bd6bed35e.png" width = "200" height = "400"/>

- 올바른 입력시
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/42632ba7-7db2-46a0-8870-40764c1a1a54.png" width = "200" height = "400"/>

- 틀린 입력시
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/5261ee2a-cd1a-4f33-a0a7-f44aa433dfad.png" width = "200" hgight = "400"/>
