//
//  Report.swift
//  BarGrapher
//
//  Created by Alexander Smith on 1/24/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import Foundation

struct Report: Hashable {
  let year: String
  let revenue: Double
}

// Sample Data
extension Report {
  static func all() -> [Report] {
    return [
      Report(year: "2020", revenue: 4500),
      Report(year: "2019", revenue: 8700),
      Report(year: "2018", revenue: 3200)
    ]
  }
}
