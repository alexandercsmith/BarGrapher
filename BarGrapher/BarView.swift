//
//  BarView.swift
//  BarGrapher
//
//  Created by Alexander Smith on 1/24/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI

struct BarView: View {
  let report: Report
  
  var body: some View {
    let value = report.revenue / 300
    let yValue = Swift.min(value * 20, 300)
    
    return VStack {
      Rectangle()
        .fill(Color.red)
        .frame(width: 100, height: CGFloat(yValue))
      Text(report.year)
    }
  }
}

struct BarView_Previews: PreviewProvider {
  static var previews: some View {
    BarView(report: Report(year: "2020", revenue: 4500))
  }
}