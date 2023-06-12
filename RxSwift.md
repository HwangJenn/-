# RxSwift
- 코드를 새로운 데이터에 반응해 순차적으로 처리하게 함으로써 비동기 프로그래밍을 쉽게 하도록 도와준다.
 
## Asynchronous Programming, 비동기 프로그래밍
- 대부분의 Class에서는 비동기로 작업을 수행하고 모든 UI 구성은 기본적으로 비동기로 처리하기 때문에 코드 전체가 어떤 순서로 실행되는지 가정하는것은 불가능하다.
- 결국 코드는 앱을 실행할 때마다 외부요인에 따라 코드가 완전히 다른 순서로 실행될 수 있다.

## 비동기 프로그래밍 용어
- State(Shared mutable state): iOS 개발을 할 때 비동기적인 State를 관리하는 것은 어렵다. 
                               기존에는 Notification Center를 사용해 이 문제를 해결했지만 RxSwift를 사용하면 더 쉽게 해결이 가능하다.
- Imperative Programming, 명령형 프로그래밍: 각각의 methods들이 하는 일을 알 수 없다.
- Side Effect: View의 state가 변경되면 Side Effect가 발생한다.
              이 Side Effect는 컨트롤이 가능해야 한다. 
              각 코드에 대해 어떤 코드가 Side Effect를 일으키는지, 단순히 데이터를 처리하고 출력하는지 알 수 있어야 한다.
- Declarative Code, 선언적 코드: 명령형 프로그래밍에서는 원하는대로 상태를 변경한다. 
                             함수형 코드에서는 Side Effect를 발생시킬 수 없다. 
                             RxSwift에서는 명령형 프로그래밍과 함수형 코드를 결합하여 동작하게 한다. 
                             선언형 코드로 동작을 정의할 수 있고, RxSwift는 관련 이벤트가 있을 때마다 동작을 실행하고 불변의 고유한 데이터 입력을 제공한다.
                             비동기 코드로 작업 할 수 있지만 단순 for문과 동일한 가정을 한다. 불변의 데이터로 작업하고 순차적이고 결정론적인 방식으로 코드를 실행할 수 있다.
- Reactive System, 반응형 시스템: 반응형 시스템은 아래 특성의 대부분을 나타내는 iOS앱을 포함한다.
                             Responsive, 반응: 항상 가장 최신의 State를 표시하며, UI를 최신 상태로 유지한다.
                             Resilient, 복원력: 각각의 행동은 고유하게 정의되며 에러 복구를 위해 유연하게 제공한다.
                             Elastic, 탄력성: 코드는 다양한 작업 부하를 처리하며, 종종 lazy pull 기반 데이터 수집, Event throttling, 리소스 공유와 같은 기능을 구현한다.
                             Message driven, 메시지 기반: 구성 요소는 메시지 기반 통신을 사용해 재사용 및 고유 기능을 개선하고, 라이프 사이클과 클래스 구현을 분리한다.

## Apple에서 제공하는 비동기 코드를 작성하기 위한 API
- NontificationCenter: 사용자가 장치의 방향을 변경하거나 키보드가 등장하고 사라지는 것과 같이 이벤트가 발생할 때마다 코드를 실행한다.
- Delegate Pattern: 임의의 시간에 다른 클래스나 API에 의해 실행될 메소드를 정의한다. 
- Grand Central Dispatch(GCD): 작품의 실행을 추상화하는데 도움을 준다. Serial Queue에서 순차적으로 실행되도록 코드를 예약하거나 우선 순위가 다른 여러 Queue에서 동시에 많은 수의 작업을 실행할 수 있다.
- Closure: 클래스간에 전달할 수 있는 분리된 코드, 각 클래스가 실행 여부를 결정할 수 있다.

## RxSwift의 세가지 구성요소
#### Observable
- 데이터의 스냅샷을 전달할수 있는 이벤트 시퀀스를 비동기적으로 생성하는 기능.
- RxSwift는 Observable을 통해 값을 배출할 수 있고, 이 값을 관찰하고 반응한다.
- 하나 이상의 옵저버가 실시간으로 어떤 이벤트에 반응하고 UI를 업데이트하거나 들어오는 데이터를 처리하고 활용할 수 있게 한다.
- ObservableType 프로토콜
  observable은 세가지 이벤트만 방출이 가능하다.
  next: 최신 값을 전송하는 이벤트
  error: Observable이 값을 배출하다 에러가 발생하면 error를 배출하고 종료 시키는 이벤트
  complete: 성공적으로 이벤트 시퀀스를 종료시키는 이벤트. observable이 더이상 값을 배출하지 않는다.
 - Finite Observable Sequence
   예) 다운로드 - 먼저 다운로드를 시작하고 데이터를 관찰한다. -> 파일의 데이터를 받고 파일로 저장한다. -> 만약 네트워킹 연결이 끊기거나 시간 초과가 발생하면 에러가 발생한다. -> 모든 데이터를 다운로드하면 성공으로 완료.
 - Infinite Observable Sequence
   자연스럽게 종료되는 시퀀스(Finite Observable Sequence)와는 달리 무한히 관찰가능한 시퀀스도 존재한다. 보통 UIEvent는 무한하게 관찰이 가능한 시퀀스이다. 
   예) 앱의 기기 방향 변경에 대응 - 가상의 코드 orientation -> orientation을 subscribe해 orientation의 값이 생성될 때마다 현재의 orientation을 받을 수 있고, 그 값을 이용해 UI를 업데이트한다. -> onError, onCompleted는 절대 발생하지 않기에 생략 가능.
 - Operator
   observableType과 observable 클래스에는 복잡한 논리를 구현하기 위해 많은 메서드가 포함되어 있다. 이 메서드들을 operator라고 부른다.
   operator는 비동기 입력을 받아 출력만 생성하기 때문에 쉽게 결합 가능하다.
   observable이 방출한 값에 RxOperator를 적용하여 부수작용을 만들 수 있다.
 - Schedulers
   Rx에서 Scheduler는 Dispatch Queue와 같지만 훨씬 쉽고 강력하다.
   RxSwift에는 여러 Scheduler가 이미 정의되어 있어서, 개발자가 따로 자신의 스케줄러를 생성할 일은 드물다.
   기존에는 GCD를 이용해서 코드를 작성했다면, Scheduler를 사용한 RxSwift에서는 다음과 같이 작동한다.
- RxCocoa
  RxSwift의 companion 라이브러리로, UIKit과 Cocoa 프레임워크 기반 모든 클래스를 가지고 있다. RxSwift는 UIKit에 대한 정보가 없다.

#
#### [참고 자료]
https://okanghoon.medium.com/rxswift-1-rxswift-입문-67bfdbd91969
https://okanghoon.medium.com/rxswift-2-observable-subject-relay-8fcd9b01913d
https://okanghoon.medium.com/rxswift-3-learn-about-operators-99bd1c44a5f9
http://yoonbumtae.com/?p=4474
