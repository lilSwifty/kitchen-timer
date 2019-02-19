//
//  TimerHelper.swift
//  KitchenTimer
//
//  Created by Mani Sedighi on 2019-02-18.
//  Copyright © 2019 Mani Sedighi. All rights reserved.
//

import UIKit

class TimerHelper: NSObject {
    
    static let shared = TimerHelper()
    
    let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    
    @objc func fireTimer() {
        
        print("Timer fired")
    }

    
}
