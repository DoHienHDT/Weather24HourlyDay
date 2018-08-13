//
//  Extensionhourlyday.swift
//  Weather24HourlyDay
//
//  Created by dohien on 11/08/2018.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
extension String {
    func gethourOfWeek(time: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm a"
        var time = "-1"
        if let timeOfday = Int(self) {
           time = String(timeOfday/100) + "giờ"
        }
        return time
        
    }
}

