//
//  RateApp.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 12.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit
import StoreKit

@available(iOS 10.3, *)
class RateApp {
    
    class func incrementCount() {
        let count = UserDefaults.standard.integer(forKey: "run_count")
        if count < 2 {
            UserDefaults.standard.set(count + 1, forKey: "run_count")
            UserDefaults.standard.synchronize()
        }
    }
    
    class func showRatesController() {
        let count = UserDefaults.standard.integer(forKey: "run_count")
        if count == 2 {
            DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
                SKStoreReviewController.requestReview()
                
            })
        }
    }
    
}
