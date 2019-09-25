//
//  AppDelegate.swift
//  TechPod
//
//  Created by Yuto Wakabayashi on 2019/09/25.
//  Copyright © 2019 com.litech. All rights reserved.
//

import UIKit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //PlayBackground
        
        let session = AVAudioSession.sharedInstance()
        do{
            try session.setCategory(.playback, mode: .default)
        } catch{
        //エラー処理
            fatalError("カテゴリ設定失敗")
        }
        //sessionのアクティブ化
        do{
            try session.setActive(true)
        }catch{
            //audiosessionの有効化失敗の処理
            //ここではエラーとして停止している
            fatalError("session有効化失敗")
        }
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

