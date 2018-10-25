//
//  AppDelegate.swift
//  ToDoey
//
//  Created by Gennadiy Glotov on 24/10/2018.
//  Copyright © 2018 Gennadiy Glotov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print("Приложение успешно выполнело загрузку/запуск")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        //для сохранения данных при звонке или другом событии
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Приложение перешло в фоновый режим")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("Приложение завершило работу")
    }


}

