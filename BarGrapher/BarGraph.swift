//
//  BarGraph.swift
//  BarGrapher
//
//  Created by Alexander Smith on 1/24/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import Foundation
import SwiftUI

struct BarGraph: View {
  let reports: [Report]
  
  var body: some View {
    VStack {
      HStack(alignment: .lastTextBaseline) {
        ForEach(self.reports, id: \.self) { report in
          BarView(report: report)
        }
      }
    }
  }
}


struct BarGraph_Previews: PreviewProvider {
  static var previews: some View {
    BarGraph(reports: Report.all())
  }
}
