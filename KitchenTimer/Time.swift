//
//  Time.swift
//  KitchenTimer
//
//  Created by Mani Sedighi on 2019-01-30.
//  Copyright © 2019 Mani Sedighi. All rights reserved.
//

import UIKit

class Time: NSObject {
    
    let hours: Double?
    let minutes: Double?
    let seconds: Double?
    
    init(hours: Double?, minutes: Double?, seconds: Double?) {
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
    }

}
