//
//  ViewController.swift
//  RXSWIFTexample01
//
//  Created by 황지현 on 2023/06/05.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var labelStatus: UILabel!
    
    var loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLoginButton(isEnabled: false)
        
        //UItextField의 값을 뷰 모델의 property에 바인딩
        _ = txtUsername.rx.text.map { $0 ?? "" }.bind(to: loginViewModel.username)
        _ = txtPassword.rx.text.map { $0 ?? "" }.bind(to: loginViewModel.password)
        
        //뷰모델의 isBind를 buttonLpgin에 바인딩
        _ = loginViewModel.isValid.bind(to: buttonLogin.rx.isEnabled)
        
        //뷰모델의 isValid를 subscribe한다
        //텍스트필드에 값이 입력되면 onNext실행
        //뷰모델의 Observable.combineLatest가 유효성 검사를 한 뒤
        //Observable<Bool> 타입의 값을 반환, 그 값이 클로저 함수 안의 isValid와 연동된다
        _ = loginViewModel.isValid.subscribe(onNext: { [unowned self] isValid in
            
            //성탸 래아불 서식 변경
            configureStatuslabel(isEnabled: isValid)
            //텍스트 필드에 값을 입력할 때마다 isValid가 실시간으로 변경된다
            print("isValid: ", isValid)
            //버튼 서식 변경
            configureLoginButton(isEnabled: isValid)
        })
    }
    
    func configureLoginButton(isEnabled: Bool) {
        buttonLogin.isEnabled = isEnabled
        buttonLogin.backgroundColor = isEnabled ? .orange: .lightGray
    }
    
    func configureStatuslabel(isEnabled: Bool) {
        labelStatus.text = isEnabled ? "Enabled" : "Disabled"
        labelStatus.textColor = isEnabled ? UIColor(red: 25/255, green: 92/255, blue: 82/255, alpha: 1) : .red
    }


}

