### SampleUserNotification_ios
---
#### 소스코드
```swift
 @IBAction func save(_ sender: Any) {
        if #available(iOS 10, *){
            //UserNotification 프레임워크를 사용한 로컬 알림
            
            //알림 동의 여부를 확인!
            UNUserNotificationCenter.current().getNotificationSettings{settings in
                if settings.authorizationStatus == UNAuthorizationStatus.authorized{
                    //알림 설정이 들어가는곳
                    DispatchQueue.main.async {
                        //알림 콘텐츠 정의
                        let nContent = UNMutableNotificationContent()
                        nContent.body = (self.msg.text)!
                        nContent.title = "미리알림"
                        nContent.sound = UNNotificationSound.default
                        
                        //발송 시각을 '지금으로부터 *초 형식'으로 변환
                        let time = self.datepicker.date.timeIntervalSinceNow
                        //발송 조건 정의
                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
                        //발송 요청 객체 정의
                        let request = UNNotificationRequest(identifier: "alarm", content: nContent, trigger: trigger)
                        //notification 추가
                        UNUserNotificationCenter.current().add(request){(_) in
                            DispatchQueue.main.async {
                                //발송 완료 안내 메시지 창
                                let date = self.datepicker.date.addingTimeInterval(9*60*60)
                                let message = "알림이 등록되었습니다. 등록된 알림은 \(date)에 발송됩니다."
                                
                                let alert = UIAlertController(title: "알림등록", message: message, preferredStyle: .alert)
                                let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
                                
                                alert.addAction(ok)
                                
                                self.present(alert,animated: false)
                                
                            }
                        }
                    }
                }else{
                    let alert = UIAlertController(title: "알림등록", message: "알림이 허용되어 있지 않습니다.", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
                    
                    alert.addAction(ok)
                    
                    self.present(alert, animated: false)
                    return
                }
            }
        }else{
            //LocalNotification 객체를 사용한 로컬 알림
        }
    }
```
* DispatchQueue.main.async{ ~


 백그라운드에서 실행되는 로직을 메인 쓰레드에서 실행되도록 처리해주는 역할을 한다.
 iOS의 프로그램 실행 영역은 UI등의 주요 처리를 담당하는 메인 실행 영역과 백그라운드 실행 영역으로 나누어지는데,
 대부분의 비동기 클로저 구문은 백그라운드 실행 영역에서 처리된다. 문제는 UI처리는 모두 메인 실행 영역에서 이루어져야 한다는 것이다.
 이 때 메인 실행 영역에서 처리되어야 하는 부분을 해당구문으로 감싸주면 코드는 모두 메인 실행 영역에서 수행된다.
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    
