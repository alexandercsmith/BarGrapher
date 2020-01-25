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
  var body: some View {
    VStack {
      HStack(alignment: .lastTextBaseline) {
        Rectangle()
          .fill(Color.orange)
          .frame(width: 100, height: 100)
          .padding()
        Rectangle()
          .fill(Color.green)
          .frame(width: 100, height: 150)
          .padding()
        Rectangle()
          .fill(Color.blue)
          .frame(width: 100, height: 200)
          .padding()
      }
    }
  }
}


struct BarGraph_Previews: PreviewProvider {
  static var previews: some View {
    BarGraph()
  }
}
