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
  @State private var showGraph: Bool = false
  
  var body: some View {
    let value = report.revenue / 300
    let yValue = Swift.min(value * 20, 300)
    
    return VStack {
      Text(String(format: "$%.2f", report.revenue))
      Rectangle()
        .fill(Color.red)
        .frame(width: 100, height: self.showGraph ? CGFloat(yValue) : 0)
        .onAppear {
          withAnimation(.default) {
            self.showGraph.toggle()
          }
        }
      Text(report.year)
    }
  }
}

struct BarView_Previews: PreviewProvider {
  static var previews: some View {
    BarView(report: Report(year: "2020", revenue: 4500))
  }
}
