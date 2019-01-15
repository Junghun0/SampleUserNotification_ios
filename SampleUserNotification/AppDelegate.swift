//
//  AppDelegate.swift
//  SampleUserNotification
//
//  Created by 박정훈 on 15/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        if #available(iOS 11.0, *){
//            //경고창, 배지, 사운드를 사용하는 알림 환경 정보를 생성하고, 사용자 등의 여부 창을 실행
//            let notiCenter = UNUserNotificationCenter.current()
//            notiCenter.requestAuthorization(options: [.alert, .badge, .sound]){(didAllow, e) in}
//            notiCenter.delegate = self
//        }else{
//            //경고창, 배지, 사운드를 사용하는 알림 환경 정보를 생성하고, 이를 애플리케이션에 저장
//            let setting = UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
//            application.registerUserNotificationSettings(setting)
//        }
        return true
    }

    //앱이 활성화 상태를 잃었을 때 실행되는 메소드 
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
//        if #available(iOS 10.0, *){
//            UNUserNotificationCenter.current().getNotificationSettings{ settings in
//                if settings.authorizationStatus == UNAuthorizationStatus.authorized{
//                    //알림 콘텐츠 객체
//                    let nConntent = UNMutableNotificationContent()
//                    nConntent.badge = 1
//                    nConntent.title = "로컬 알림 메시지"
//                    nConntent.subtitle = "앱을 다시 실행해주세요"
//                    nConntent.body = "종료되었어요, 다시 들어오세요"
//                    nConntent.sound = UNNotificationSound.default
//                    nConntent.userInfo = ["name":"홍길동"]
//
//                    //알림 발송 조건 객체
//                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
//
//                    //알림 요청 객체
//                    let request = UNNotificationRequest(identifier: "wakeup", content: nConntent, trigger: trigger)
//
//                    //노티피케이션 센터에 추가
//                    UNUserNotificationCenter.current().add(request)
//
//
//                }else{
//                    print("사용자가 동의하지 않음")
//                }
//            }
//        }else{
//            //iOS 9 이하에서 UILocalNotification 이용해 로컬알림
//        }
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

