//
//  Extensionhourlyday.swift
//  Weather24HourlyDay
//
//  Created by dohien on 11/08/2018.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
extension String {
    func gethourOfWeek(dataJ: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:m"
        let dayOfWeek = Date(timeIntervalSince1970: TimeInterval(dataJ)!)
        return (dataJ != nil) ? " \(dateFormatter.string(from: dayOfWeek))" : "Date Invalid"
    }
}
