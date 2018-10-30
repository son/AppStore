//
//  AppCategory.swift
//  AppStore
//
//  Created by takeru on 2018/06/30.
//  Copyright © 2018年 takeru. All rights reserved.
//

import UIKit

final class Category: NSObject {
    
    var name: String?
    var apps: [App]?
    
    static func sampleAppCategories() -> [Category] {
        let bestNewAppsCategory = Category()
        bestNewAppsCategory.name = "Best New Apps"
        var apps = [App]()

        let frozenApp = App()
        frozenApp.name = "Disney Built It: Frozen"
        frozenApp.imageName = "frozen"
        frozenApp.category = "Entertainment"
        frozenApp.price = NSNumber(floatLiteral: 3.99)
        apps.append(frozenApp)
        bestNewAppsCategory.apps = apps

        let bestNewGamesCategory = Category()
        bestNewGamesCategory.name = "Best New Games"
        var bestNewGamesApps = [App]()
        let telepaintApp = App()
        telepaintApp.name = "TelepaintApp"
        telepaintApp.imageName = "frozen"
        telepaintApp.category = "Games"
        telepaintApp.price = NSNumber(floatLiteral: 2.99)
        bestNewGamesApps.append(telepaintApp)
        bestNewAppsCategory.apps = bestNewGamesApps
        
        return [bestNewAppsCategory, bestNewGamesCategory]
    }
}
