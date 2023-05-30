## MVC example 01
- MVC 패턴을 이용한 간단한 로그인 페이지
- 지정한 이메일과 패스워드 올바른 입력시 "로그인 성공", 틀린 입력시 "로그인 실페" 메시지 출력
- View(UILabel, UITextField)에서 UILabel은 UIView를, UITextField의 경우 UIView(UIControl을 상속함) 상속받고 있다. M"V"C
- ViewContorller.swift에서 class ViewController: UIViewController {}이 MV"C"
- Model 폴더의 User.swift이 "M"VC. 

- 예제를 따라 코드를 입력하고 실행했을 때, Thread 1: Fatal error: Unexpectadly found while unwrapping an Optional value 오류를 확인할 수 있었으나 이는 스토리보드 객체를 구성함으로써 오류를 해결했다.
- 예제에는 로그인 성공시 "로그인 성공" 메시지가 출력되게 되어 있으나 여기에선 로그인 실패시 "로그인 실패" 메시지도 출력하게 했다.

#### [swift 프로젝트]
- ViewController.swift
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/ed2b8232-a1fc-436a-980d-571df398128b.png" width = "600" height = "300"/>

- User.swift
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/90706a6e-ae64-4072-a87a-5807e5927a00.png" width = "600" height = "300"/>

- Main.storyboard
<img src = "https://github.com/JXHXXN/SWIFT_projects/assets/76980015/36b6d25e-535e-4146-a5ff-ea3eff85f92b.png" width = "300" height = "350"/>


#### [출력 결과]  
<p>
  <figcaption>
    - 초기화면    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 올바른(지정된 정보) 입력시
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 틀린 입력(지정되지 않은 정보) 입력시
  </figcaption></br>
  <img src="https://github.com/JXHXXN/SWIFT_projects/assets/76980015/0c084a02-d739-401e-a692-d53bd6bed35e.png" align="center" width="32%">
  <img src="https://github.com/JXHXXN/SWIFT_projects/assets/76980015/42632ba7-7db2-46a0-8870-40764c1a1a54.png" align="center" width="32%">
  <img src="https://github.com/JXHXXN/SWIFT_projects/assets/76980015/5261ee2a-cd1a-4f33-a0a7-f44aa433dfad.png" align="center" width="32%">
</p>


#
#### [예제 참고]
https://lsh424.tistory.com/44
