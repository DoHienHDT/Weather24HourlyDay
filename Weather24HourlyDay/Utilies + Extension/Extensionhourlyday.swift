//
//  Extensionhourlyday.swift
//  Weather24HourlyDay
//
//  Created by dohien on 11/08/2018.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
extension String {
    func gethourOfWeek(dataJ: Double) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "m"
        let dayOfWeek = Date(timeIntervalSince1970: dataJ)
        return (dataJ != nil) ? " \(dateFormatter.string(from: dayOfWeek))" : "Date Invalid"
    }
}
